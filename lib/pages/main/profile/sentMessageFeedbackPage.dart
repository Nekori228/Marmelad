import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/bar/bottomNavigationBar.dart';
import '../mainPage.dart';

class sentMessageFeedbackPage extends StatelessWidget {
  const sentMessageFeedbackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Сообщение отправлено',
              style: TextStyle(
                fontSize: 40,
                height: 1,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                color: Color(0xFFFFFFFF),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            Text(
              'Спасибо, за обратную \nсвязь',
              style: TextStyle(
                fontSize: 16,
                height: 1,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                color: Color(0xFF666666),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomNavigationBar: ProjectBottomNavBar(),
    );
  }
}