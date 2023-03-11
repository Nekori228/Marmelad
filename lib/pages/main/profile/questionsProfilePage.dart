import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../widgets/appBar/questionsAppBar.dart';
import '../../../widgets/profilewidgets/questions/questionsItam.dart';

class questionsProfilePage extends StatelessWidget {
  const questionsProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0), child: QuestionsAppBar()),
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 30),
              QuestionsItem(),
              SizedBox(height: 30),
              QuestionsItem(),
              SizedBox(height: 30),
              QuestionsItem(),
              SizedBox(height: 30),
              QuestionsItem(),
              SizedBox(height: 30),
              QuestionsItem(),
              SizedBox(height: 30),
              QuestionsItem(),
            ],
          ),
        ),
      ),
    );
  }
}
