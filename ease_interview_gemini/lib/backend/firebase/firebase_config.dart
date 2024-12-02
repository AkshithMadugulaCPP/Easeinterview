import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA8043QKgKWIcUK8W52LDuqyiIpXwCB2JQ",
            authDomain: "ease-interview-pdehz5.firebaseapp.com",
            projectId: "ease-interview-pdehz5",
            storageBucket: "ease-interview-pdehz5.appspot.com",
            messagingSenderId: "972431477615",
            appId: "1:972431477615:web:9873a9fc43eee678ec369a"));
  } else {
    await Firebase.initializeApp();
  }
}
