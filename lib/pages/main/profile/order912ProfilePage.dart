import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/appBar/order912AppBar.dart';
import '../../../widgets/profilewidgets/favorite/favoriteOrderItems.dart';

class Order912ProfilePage extends StatelessWidget {
  const Order912ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Order912AppBar(),
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Готовится',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontFamily: "Overpass-SemiBold",
                        fontSize: 36),
                  ),
                ),
              ),
              SizedBox(height: 30),
              FavoriteOrderItems2(),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'ФИО: Иванов Иван',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(0.5),
                        fontFamily: "Overpass-Bold",
                        fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Адрес: г.Сургут, Энтузистов 48,  18кв, 2 этаж',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(0.5),
                        fontFamily: "Overpass-Bold",
                        fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Color(0xFFFFFFFF).withOpacity(0.5),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontFamily: 'Overpass-'),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Номер: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: '+79888888999',
                          ),
                        ]),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Сумма: 1200 ₽',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(0.5),
                        fontFamily: "Overpass-SemiBold",
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
