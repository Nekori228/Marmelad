import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../mainPage.dart';

class sentMessageFinishingPage extends StatelessWidget {
  const sentMessageFinishingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.22),
              child: Text(
                'Столик успешно забронирован',
                style: TextStyle(
                  fontSize: 40,
                  height: 1,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Спасибо, что выбрали нас',
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
    );
  }
}
