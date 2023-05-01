import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/pages/main/profile/bookingHistory.dart';
import 'package:marmelad/pages/main/visitDatePage.dart';
import '../../widgets/bar/bottomNavigationBar.dart';
import '../../widgets/booking.dart';
import '../../widgets/bar/bookingBar.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  Future<bool> _onWillPop() async {
    return false; //<-- SEE HERE
  }
  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: Color(0xFF000000),
        body: SafeArea(
          child: Column(
            children: [
              BookingBarWidget(),
              SizedBox(height: 20),
              Container(
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.03),
                  child: Row(
                    children: [
                      Text(
                        'Активные бронирования',
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: "Overpass-SemiBold",
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          icon: Icon(
                            Icons.more_time_rounded,
                            size: 24,
                            color: Color(0xFFFFFFFF).withOpacity(0.5),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => bookingHistory(),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              BookingWidget(),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VisitDatePage()));
                },
                clipBehavior: Clip.antiAlias,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.zero,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset("assets/images/button.png", fit: BoxFit.cover),
                    Text(
                      'ЗАБРОНИРОВАТЬ',
                      style: TextStyle(
                          letterSpacing: 3.75,
                          fontSize: 24,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: ProjectBottomNavBar(),
      ),
    );
  }
}
