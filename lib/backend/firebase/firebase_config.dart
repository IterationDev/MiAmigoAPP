import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAYawbxg8dDVnuuqk559bkLnZ0Tuzb_kYo",
            authDomain: "miamigov1.firebaseapp.com",
            projectId: "miamigov1",
            storageBucket: "miamigov1.firebasestorage.app",
            messagingSenderId: "50410189572",
            appId: "1:50410189572:web:4533b7180934a4e1011651",
            measurementId: "G-HSYRZDVWEG"));
  } else {
    await Firebase.initializeApp();
  }
}
