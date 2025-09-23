import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCnUCi0z-_eUzOHn-H8EbVKeBAa4ywVP5w",
            authDomain: "simpli-citas-c6t1k0.firebaseapp.com",
            projectId: "simpli-citas-c6t1k0",
            storageBucket: "simpli-citas-c6t1k0.firebasestorage.app",
            messagingSenderId: "765748580511",
            appId: "1:765748580511:web:5f50052f921be7d744d2aa",
            measurementId: "G-VJMJ4T3N5F"));
  } else {
    await Firebase.initializeApp();
  }
}
