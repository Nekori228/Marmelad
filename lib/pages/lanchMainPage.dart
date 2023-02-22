import 'package:flutter/cupertino.dart';

import '../widgets/booking.dart';
import '../widgets/hello.dart';
import '../widgets/items.dart';
import '../widgets/tabs.dart';
import '../widgets/tabs2.dart';

class HomeMainPage extends StatelessWidget {
  const HomeMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HelloWidget(),
            TabsWidget2(),
            BookingWidget(),
            Item1(),
            Item2(),
            Item1(),
          ],
        ),
      ),
    );
  }
}
