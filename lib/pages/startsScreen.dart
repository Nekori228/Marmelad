import 'package:flutter/material.dart';

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
              Text(
                'MARMELAD',
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 40,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold),
              ),
              Text('LOUNGE BAR',
                  style: TextStyle(
                      color: Color(0xFFFFFFFF).withOpacity(0.4),
                      fontSize: 20,
                      fontFamily: "Poppins")),
              Container(
                width: 320,
                height: 62,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/button.png")),
                ),
                child: Center(
                    child: Text(
                  "НАЧАТЬ",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600),
                )),
              ),
              Center(
                child: Text(
                  'Marmelad cocktail lounge bar',
                  style: TextStyle(
                      color: Color(0xFFFFFFFF).withOpacity(0.4),
                      fontSize: 14,
                      fontFamily: "Poppins"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
