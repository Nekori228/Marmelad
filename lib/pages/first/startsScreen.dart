import 'package:flutter/material.dart';

import 'helpBooking.dart';

class startScreen extends StatelessWidget {
  const startScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background/startScreen.png"),
                  fit: BoxFit.cover)),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(170, 0, 110, 0),
                              child: Image.asset("assets/images/logo.png",
                                  fit: BoxFit.cover),
                            ),
                            Text(
                              'MARMELAD',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 40,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                              child: Text(
                                'LOUNGE BAR',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF).withOpacity(0.4),
                                    fontSize: 20,
                                    fontFamily: "Poppins"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HelpBooking()));
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
                      Image.asset("assets/images/button.png",
                          fit: BoxFit.cover),
                      Text('НАЧАТЬ',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                    ],
                  ),
                ),
                Text(
                  'Marmelad cocktail lounge bar',
                  style: TextStyle(
                      color: Color(0xFFFFFFFF).withOpacity(0.4),
                      fontSize: 14,
                      fontFamily: "Poppins"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
