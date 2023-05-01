import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/bar/bottomNavigationBar.dart';
import '../mainPage.dart';

class OrderSuccesfullyPage extends StatelessWidget {
  const OrderSuccesfullyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(milliseconds: 1000)),
        builder: (context, snapshot) {
// Checks whether the future is resolved, ie the duration is over
          if (snapshot.connectionState == ConnectionState.done)
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
                        'Заказ успешно принят',
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
                      'Наш ресторан, уже готовит заказ для вас',
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
          else
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
                        'Обработка платежа',
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
                      'Это не займет много времени',
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
        });
  }
}
