import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marmelad/widgets/hello.dart';
import 'package:marmelad/pages/theme.dart';
import 'package:marmelad/widgets/items.dart';

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
              Item1(),
              Item2(),
              Item1(),
            ],
          ),
        ),
      ),
    );
  }
}
