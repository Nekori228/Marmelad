import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/globals.dart';
import 'package:marmelad/pages/main/profile/bookingHistory.dart';
import 'package:marmelad/pages/main/visitDatePage.dart';
import '../../widgets/bar/bottomNavigationBar.dart';
import '../../widgets/booking.dart';
import '../../widgets/bar/bookingBar.dart';
import 'package:marmelad/globals.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  var statePreviousCallback;


  Future<bool> _onWillPop() async {
    return false; //<-- SEE HERE
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    statePreviousCallback = setState;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: const Color(0xFF000000),
        body: SafeArea(
          child: Column(
            children: [
              const BookingBarWidget(),
              const SizedBox(height: 20),
              Container(
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.03),
                  child: Row(
                    children: [
                      const Text(
                        'Активные бронирования',
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: "Overpass-SemiBold",
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                          icon: Icon(
                            Icons.more_time_rounded,
                            size: 24,
                            color: const Color(0xFFFFFFFF).withOpacity(0.5),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const bookingHistory(),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              prefs.getString('lastBooking') != null ? BookingWidget(statePreviousCallback: statePreviousCallback,) : Container(),
              const Spacer(),
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
                    const Text(
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
        bottomNavigationBar: const ProjectBottomNavBar(),
      ),
    );
  }
}
