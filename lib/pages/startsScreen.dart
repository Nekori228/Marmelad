import 'package:flutter/material.dart';
import 'package:marmelad/pages/test.dart';

import 'helpBooking.dart';

class startScreen extends StatelessWidget {
  const startScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background/startScreen.png"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                child: Text(
                  'MARMELAD',
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 40,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                child: Text(
                  'LOUNGE BAR',
                  style: TextStyle(
                      color: Color(0xFFFFFFFF).withOpacity(0.4),
                      fontSize: 20,
                      fontFamily: "Poppins"),
                ),
              ),
              Container(
                width: 0,
                height: 550,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 320,
                      height: 62,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/button.png"),
                        ),
                      ),
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HelpBooking()));
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.black.withOpacity(0),
                            ),
                            child: SizedBox(
                              width: 320,
                              height: 62,
                              child: Center(
                                child: Text(
                                  "НАЧАТЬ",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
