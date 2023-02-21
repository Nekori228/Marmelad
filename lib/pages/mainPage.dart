import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marmelad/widgets/hello.dart';
import 'package:marmelad/pages/theme.dart';

import '../widgets/booking.dart';
import '../widgets/tabs.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeMarmelad,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HelloWidget(),
              TabsWidget(),
              BookingWidget(),
              ElevatedButton(
                onPressed: () {},
                clipBehavior: Clip.antiAlias,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFFFFF).withOpacity(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.zero,
                ),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset("assets/images/item1.png"),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.03),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Фреш роллы с креветкой  200гр",
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontFamily: "Overpass-Bold",
                                    fontSize: 14),
                              ),
                              Spacer(),
                              Icon(
                                Icons.star,
                                color: Color(0xFFF7FF88),
                                size: 20,
                              ),
                              Text(
                                "4.8",
                                style: TextStyle(color: Color(0xFFF7FF88)),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 230,
                                height: 60,
                                child: Text(
                                  'Ролл из рисовой бумаги с креветкой и манго с соусом чили',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF).withOpacity(0.5),
                                    fontFamily: "Overpass-SemiBold",
                                    fontSize: 16
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                '300 ₽',
                                style: TextStyle(
                                  color: Color(0xFFF7FF88),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
