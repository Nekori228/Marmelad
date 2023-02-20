import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'appBar2.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: appBarMarmelad2(),
        body: SafeArea(child: SignUpPage()),
      );
  }
}

class SignUpPage extends StatelessWidget {
  const SignUpPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('ss', style: TextStyle(color: Colors.white),);
  }
}

