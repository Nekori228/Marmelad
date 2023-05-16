import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/globals.dart';
import 'package:marmelad/pages/first/signUp.dart';
import 'package:marmelad/pages/first/signupScreen.dart';
// import 'package:marmelad/firebase_options.dart';
import 'package:marmelad/pages/first/startsScreen.dart';
import 'package:marmelad/pages/first/verify_email_screen.dart';
import 'package:marmelad/pages/main/homeMaimPage.dart';
import 'package:marmelad/pages/main/mainPage.dart';
import 'package:marmelad/services/firebase_streem.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  initPrefs();
  runApp(MaterialApp(
    home: startScreen(),
    routes: {
      '/main': (context) => const FirebaseStream(),
      '/mainpage': (context) => const HomeMainPage(),
      '/signup': (context) => const SignUpScreen(),
      '/verify_email': (context) => const VerifyEmailScreen(),
    },
    initialRoute: '/',
  ));
}