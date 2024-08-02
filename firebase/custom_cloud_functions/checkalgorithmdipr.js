const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.checkalgorithmdipr = functions
  .region("us-central1")
  .https.onCall(async (data, context) => {
    // Write your code below!
    if (!context.auth) {
      throw new functions.https.HttpsError(
        "failed-precondition",
        "The function must be called while authenticated.",
      );
    }
    const firestore = admin.firestore();
    const newspaperLogicRef = firestore.collection("NewspaperJobAllocation");

    // Indian Standard Time offset: +5:30
    const ISTOffset = 330; // in minutes

    try {
      // Fetch documents where acknowledged is false and Completed is false
      const querySnapshot = await newspaperLogicRef
        .where("acknowledgedboolean", "==", false)
        .where("completed", "==", false)
        .get();

      if (querySnapshot.empty) {
        console.log("No matching documents to process.");
        return { status: "info", message: "No documents need processing." };
      }

      let processedDocs = 0;

      for (const doc of querySnapshot.docs) {
        const data = doc.data();
        const timeOfAllotment = data.timeofallotment.toDate();
        const duetime = data.duetime.toDate(); // Convert Firestore Timestamp to JavaScript Date (UTC)

        const currentTimeUTC = new Date();
        const ISTOffset = 330; // IST offset in minutes
        const currentTimeIST = new Date(
          currentTimeUTC.getTime() + ISTOffset * 60000,
        );
        const duetimeIST = new Date(duetime.getTime() + ISTOffset * 60000);
        // Check if the difference is greater than 1 hour
        if (currentTimeIST > duetimeIST) {
          // 3600000ms = 60 minutes
          // Update the document
          await doc.ref.update({
            completed: true,
            acknowledgmenttime: currentTimeIST, // Use server timestamp for consistency
          });

          processedDocs++;

          // Assuming data.adRef is "/Advertisement/pbN6SEKfE9Hgr4op3m5p"
          console.log(data.adref);
          const adRefPathParts = data.adref.split("/");
          const adDocId = adRefPathParts[adRefPathParts.length - 1]; // Extracts "pbN6SEKfE9Hgr4op3m5p"

          const adRef = firestore.collection("Advertisement").doc(adDocId);
          console.log("fetch doc from add");
          await adRef.update({
            allotednewspapers: admin.firestore.FieldValue.arrayRemove(
              data.newspaperrefuserref,
            ),
          });
          console.log("Removing user");

          // Logic to take the first item from the waiting list and create a document in NewspaperJob
          const jobLogicDocRef = firestore
            .collection("joblogic")
            .doc("h492u9mFHBHIEpvOWids");
          const jobLogicDocSnapshot = await jobLogicDocRef.get();
          const jobLogicData = jobLogicDocSnapshot.data();
          console.log("fetch joblogicdoc");

          if (
            jobLogicData &&
            jobLogicData.waitingquuelist &&
            jobLogicData.waitingquuelist.length > 0
          ) {
            const newJobRef = jobLogicData.waitingquuelist[0];
            await adRef.update({
              allotednewspapers:
                admin.firestore.FieldValue.arrayUnion(newJobRef), // Assuming newJobUserRef is the value you want to add
            });

            // Take the first item from the waiting list
            const updatedWaitingQueueList =
              jobLogicData.waitingquuelist.slice(1);

            // Update the document in 'joblogic' collection
            await jobLogicDocRef.update({
              waitingquuelist: updatedWaitingQueueList,
            });
            // Current time in IST

            // Create a document in NewspaperJob
            await firestore.collection("NewspaperJobAllocation").add({
              acknowledgedboolean: false,
              acknowledgementtime: null, // Field is unset or you can simply omit this line
              timeofallotment: admin.firestore.FieldValue.serverTimestamp(), // Setting current time in IST as a Firestore Timestamp
              newspaperrefuserref: newJobRef,
              adref: data.adref, // Assuming `data` is the context of the current document in loop
              completed: false,
            });
            // Optionally, you can update the waitinglist to remove the first item if required
          }
        }
      }

      console.log(`Processed ${processedDocs} documents.`);
    } catch (error) {
      console.error("Error processing documents: ", error);
    }

    return null;

    // Write your code above!
  });
