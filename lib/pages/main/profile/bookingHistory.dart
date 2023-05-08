import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/globals.dart';

import '../../../widgets/bar/bookingHistoryBar.dart';
import '../../../widgets/bar/bottomNavigationBar.dart';

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
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'История бронирования',
                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 22, fontFamily: "Overpass-Bold", fontWeight: FontWeight.bold),
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
              ListView.separated(
                itemBuilder: (context, index) {
                  var booking_object = jsonDecode(prefs.getString('booking'))[index];
                  return Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFFFFFFF).withOpacity(0.03),
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                              child: Text(
                                'Бронирование',
                                style: TextStyle(color: Color(0xFFFFFFFF), fontFamily: "Overpass-SemiBold", fontSize: 22),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                              child: Text(
                                '${booking_object['place']} столик',
                                style: TextStyle(color: Color(0xFFFFFFFF), fontFamily: "Overpass-Bold", fontSize: 43),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Row(
                              children: [
                                Icon(
                                  CupertinoIcons.calendar,
                                  color: Color(0xFFFFFFFF).withOpacity(0.5),
                                ),
                                Text(
                                  '${booking_object['count_hum']} человек, ${booking_object['date']} в 12:00',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF).withOpacity(0.5),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 5, 0, 20),
                            child: Row(
                              children: [
                                Icon(
                                  CupertinoIcons.map_pin,
                                  color: Color(0xFFFFFFFF).withOpacity(0.5),
                                ),
                                Text(
                                  'Иосифа Каролинского 4, 2 этаж',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF).withOpacity(0.5),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 20);
                },
                itemCount: jsonDecode(prefs.getString('booking')).length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ProjectBottomNavBar(),
    );
  }
}
