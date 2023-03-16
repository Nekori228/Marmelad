import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/pages/first/signUp.dart';
// import 'package:marmelad/firebase_options.dart';
import 'package:marmelad/pages/first/startsScreen.dart';
import 'package:marmelad/pages/main/mainPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(MaterialApp(
    theme: ThemeData(
        primaryColor: Color(0xFFF7FF88)
    ),
    home: startScreen(),
  ));
}
