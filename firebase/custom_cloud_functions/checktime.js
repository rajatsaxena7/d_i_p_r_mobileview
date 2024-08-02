const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.checktime = functions.https.onCall((data, context) => {
  // Write your code below!
  if (!context.auth) {
    throw new functions.https.HttpsError(
      "failed-precondition",
      "The function must be called while authenticated.",
    );
  }

  const firestore = admin.firestore();

  // Calculate current time in IST (Indian Standard Time)
  const currentTimeUTC = new Date();
  const ISTOffset = 330; // IST offset in minutes
  const currentTimeIST = new Date(currentTimeUTC.getTime() + ISTOffset * 60000); // Convert UTC to IST

  // Format hours and minutes for comparison
  const hoursIST = currentTimeIST.getHours();
  const minutesIST = currentTimeIST.getMinutes();
  console.log(`Current  Time by new date function : ${currentTimeUTC}`);
  console.log(`Current IST Time: ${hoursIST}:${minutesIST}`);

  // Proceed only if current IST time is after 7 PM
  if (hoursIST < 19) {
    console.log("The function is called before 7 PM IST. Exiting...");
    return {
      status: "error",
      message: "Function must be called after 7 PM IST.",
      currentTimeIST,
      currentTimeUTC,
    };
  }

  // Function's main logic goes here
  // This is a placeholder to continue with your existing logic
  // For demonstration, let's just return the current time and a sample allotment time
  const sampleAllotmentTime = new Date(); // Assuming current time as allotment time for testing

  // Returning current IST time and sample allotment time for testing
  return {
    status: "success",
    message: "Function processed after 7 PM IST.",
    currentTimeIST: currentTimeIST.toISOString(),
    allotmentTime: sampleAllotmentTime.toISOString(),
  };

  // Write your code above!
});
