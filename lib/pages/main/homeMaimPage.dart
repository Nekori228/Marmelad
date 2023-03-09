import 'package:flutter/cupertino.dart';

import '../../widgets/booking.dart';
import '../../widgets/bar/mainBar.dart';
import '../../widgets/mainItems.dart';
import '../../widgets/tabs.dart';

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
            TabsWidget(),
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
