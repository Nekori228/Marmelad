import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/booking.dart';
import '../widgets/hello.dart';
import '../widgets/items.dart';
import '../widgets/tabs.dart';

class HomeMainPage extends StatelessWidget {
  const HomeMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: SingleChildScrollView(
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
