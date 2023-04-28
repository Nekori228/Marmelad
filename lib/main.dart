import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/globals.dart';
import 'package:marmelad/pages/first/signUp.dart';
// import 'package:marmelad/firebase_options.dart';
import 'package:marmelad/pages/first/startsScreen.dart';
import 'package:marmelad/pages/main/mainPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  initPrefs();
  runApp(MaterialApp(
    home: startScreen(),
  ));
}