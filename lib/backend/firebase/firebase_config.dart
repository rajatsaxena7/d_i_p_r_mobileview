import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB1Y9mYSUvIQF1C2bOw1YHfhx7yUSo1IKk",
            authDomain: "dipr-6b4e7.firebaseapp.com",
            projectId: "dipr-6b4e7",
            storageBucket: "dipr-6b4e7.appspot.com",
            messagingSenderId: "1080485577767",
            appId: "1:1080485577767:web:ae2260887022f23e41ba02",
            measurementId: "G-80DMKTGXZV"));
  } else {
    await Firebase.initializeApp();
  }
}
