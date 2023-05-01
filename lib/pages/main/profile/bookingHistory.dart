import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/bar/bookingHistoryBar.dart';
import '../../../widgets/bar/bottomNavigationBar.dart';
import '../../../widgets/profilewidgets/bookingHistory/bookinHistoryItems.dart';

class bookingHistory extends StatelessWidget {
  const bookingHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              BookingHistotyBarWidget(),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'История бронирования',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 22,
                          fontFamily: "Overpass-Bold",
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.arrow_circle_left,
                          color: Color(0xFFFFFFFF),
                          size: 40,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ],
                ),
              ),
              SizedBox(height: 20),
              bookinHistoryItems(),
              SizedBox(height: 20),
              bookinHistoryItems(),
              SizedBox(height: 20),
              bookinHistoryItems(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ProjectBottomNavBar(),
    );
  }
}
