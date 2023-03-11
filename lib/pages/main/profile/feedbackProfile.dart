import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/pages/main/profile/sentMessageFeedbackPage.dart';

import '../../../widgets/bar/feedbackBar.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.044),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FeedbackBarWidget(),
                Text(
                  'Имя',
                  style: TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Overpass-Black"),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                      cursorColor: Colors.black,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: 'Иван',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFFFFFFF).withOpacity(0.4),
                            fontFamily: 'Poppins'),
                        filled: true,
                        fillColor: Color(0xFFF7FF88).withOpacity(0.2),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Фамилия',
                  style: TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Overpass-Black"),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                      cursorColor: Colors.black,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: 'Иванов',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFFFFFFF).withOpacity(0.4),
                            fontFamily: 'Poppins'),
                        filled: true,
                        fillColor: Color(0xFFF7FF88).withOpacity(0.2),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Адрес ЭЛЕКТРОННОЙ ПОЧТЫ',
                  style: TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Overpass-Black"),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                      cursorColor: Colors.black,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: 'danil.superdesign@gmail.com',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFFFFFFF).withOpacity(0.4),
                            fontFamily: 'Poppins'),
                        filled: true,
                        fillColor: Color(0xFFF7FF88).withOpacity(0.2),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Сообщение',
                  style: TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Overpass-Black"),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                      cursorColor: Colors.black,
                      style: TextStyle(color: Colors.white),
                      maxLines: 6,
                      minLines: 2,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: 'Классное заведение и приложение тоже очень понравилось',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFFFFFFF).withOpacity(0.4),
                            fontFamily: 'Poppins'),
                        filled: true,
                        fillColor: Color(0xFFF7FF88).withOpacity(0.2),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => sentMessageFeedbackPage()));
                    },
                    clipBehavior: Clip.antiAlias,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: EdgeInsets.zero,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset("assets/images/button.png", fit: BoxFit.cover),
                        Text(
                          'ОТПРАВИТЬ',
                          style: TextStyle(
                              letterSpacing: 3.75,
                              fontSize: 24,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
