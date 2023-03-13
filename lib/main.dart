import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:marmelad/firebase_options.dart';
import 'package:marmelad/pages/first/startsScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const startScreen(),
    },
  ));
}
