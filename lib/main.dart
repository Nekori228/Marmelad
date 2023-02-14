import 'package:flutter/material.dart';
import 'package:marmelad/pages/startsScreen.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => const startScreen(),
  },
));