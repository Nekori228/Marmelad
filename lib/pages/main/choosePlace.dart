import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/pages/main/visitDatePage.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

import '../../widgets/appBar/VisitDateAppBar.dart';

class ChoosePlacePage extends StatefulWidget {
  @override
  State<ChoosePlacePage> createState() => _ChoosePlacePageState();
}

class _ChoosePlacePageState extends State<ChoosePlacePage> {
  dynamic maxDate = 0;
  late final calendarController;

  @override
  void initState() {
    super.initState();
    var date = DateTime.now();
    var firstDayThisMonth = new DateTime(date.year, date.month, date.day);
    var firstDayNextMonth = new DateTime(firstDayThisMonth.year, firstDayThisMonth.month + 1, firstDayThisMonth.day);
    maxDate = DateTime.now().add(Duration(days: firstDayNextMonth.difference(firstDayThisMonth).inDays - date.day));
    calendarController = CleanCalendarController(
      minDate: DateTime.now(),
      maxDate: maxDate,
      onRangeSelected: (firstDate, secondDate) {},
      onDayTapped: (date) {},
      // readOnly: true,
      onPreviousMinDateTapped: (date) {},
      onAfterMaxDateTapped: (date) {},
      weekdayStart: DateTime.monday,
      // initialFocusDate: DateTime(2023, 5),
      // initialDateSelected: DateTime(2022, 3, 15),
      // endDateSelected: DateTime(2022, 3, 20),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrollable Clean Calendar',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          primary: Color(0xFFF7FF88),
          primaryContainer: Color(0xFFF7FF88),
          secondary: Color(0xFFD32F2F),
          secondaryContainer: Color(0xFF9A0007),
          surface: Color(0xFFDEE2E6),
          background: Color(0xFFF8F9FA),
          error: Color(0xFF96031A),
          onPrimary: Colors.black,
          onSecondary: Colors.white,
          onSurface: Colors.white,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF000000),
          appBar: PreferredSize(preferredSize: Size.fromHeight(80.0), child: VisitDateAppBar()),
          body: Column(
            children: [
              Spacer(),
              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Зал 1',
                      style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Text('15 января', style: TextStyle(color: Colors.white.withOpacity(0.12), fontSize: 40)),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              Stack(
                children: [
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                          Container(
                            width: 69,
                            height: 33,
                            decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                '9',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                          Container(
                            width: 69,
                            height: 33,
                            decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                '10',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                          Container(
                            width: 36,
                            height: 33,
                            decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(50))),
                            child: Center(
                              child: Text(
                                '11',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                          Container(
                            width: 70,
                            height: 51,
                            decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                'VIP \n21',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                          Container(
                            width: 39,
                            height: 51,
                            decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                '20',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width * 0.025),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                          Container(
                            width: 69,
                            height: 33,
                            decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                '8',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 33,
                            height: 51,
                            decoration: BoxDecoration(color: Colors.white.withOpacity(0.44), borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                'DJ',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width * 0.025),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                          Container(
                            width: 69,
                            height: 33,
                            decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                '7',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.125),
                          Container(
                            width: 68,
                            height: 33,
                            decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                '13',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                          Container(
                            width: 72,
                            height: 33,
                            decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                '12',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width * 0.05 + 7),
                          Column(
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                              Container(
                                width: 62,
                                height: 33,
                                decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Text(
                                    '6',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                              Container(
                                width: 62,
                                height: 33,
                                decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Text(
                                    '5',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.08),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 85,
                                height: 33,
                                decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Text(
                                    '15',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                              Container(
                                width: 85,
                                height: 33,
                                decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Text(
                                    '17',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.0125),
                              Container(
                                width: 68,
                                height: 33,
                                decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Text(
                                    '19',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 85,
                                height: 33,
                                decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Text(
                                    '14',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                              Container(
                                width: 85,
                                height: 33,
                                decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Text(
                                    '16',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.0125),
                              Container(
                                width: 68,
                                height: 33,
                                decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Text(
                                    '18',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 73,
                                    height: 33,
                                    decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(10))),
                                    child: Center(
                                      child: Text(
                                        '4',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width * 0.18),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 41,
                                    height: 73,
                                    decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(10))),
                                    child: Center(
                                      child: Text(
                                        '2',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: 41,
                                    height: 73,
                                    decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(10))),
                                    child: Center(
                                      child: Text(
                                        '1',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                          Container(
                            width: 36,
                            height: 33,
                            decoration: BoxDecoration(color: Color(0xff333333), borderRadius: BorderRadius.all(Radius.circular(50))),
                            child: Center(
                              child: Text(
                                '11',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.14),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(color: Colors.white.withOpacity(0.44), borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                                child: Text(
                                  'Лестница',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(color: Colors.white.withOpacity(0.44), borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 13, horizontal: 40),
                                child: Text(
                                  'Хостес',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Positioned(
                    right: 0,
                    top: MediaQuery.of(context).size.height * 0.15,
                    child: Container(
                      width: 33,
                      height: 135,
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(color: Colors.white.withOpacity(0.44), borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text(
                          'Бар',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChoosePlacePage()));
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
                    Image.asset("assets/images/button.png", fit: BoxFit.cover,),
                    Text(
                      'ДАЛЕЕ',
                      style: TextStyle(
                          letterSpacing: 3.75,
                          fontSize: 24,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}