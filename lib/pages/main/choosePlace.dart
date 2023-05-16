import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/pages/main/visitDatePage.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

import '../../widgets/appBar/VisitDateAppBar.dart';
import '../../widgets/bar/bottomNavigationBar.dart';
import 'finishingTouch.dart';

class ChoosePlacePage extends StatefulWidget {
  var selectDateMonth;

  ChoosePlacePage({Key? key, this.selectDateMonth}) : super(key: key);

  @override
  State<ChoosePlacePage> createState() => _ChoosePlacePageState();
}

class _ChoosePlacePageState extends State<ChoosePlacePage> {
  dynamic maxDate = 0;
  late final calendarController;
  var selectedDate = '';

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF000000),
        appBar: PreferredSize(preferredSize: const Size.fromHeight(80.0), child: VisitDateAppBar()),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const Spacer(),
                Container(
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Зал 1',
                        style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      Text(widget.selectDateMonth.toString(), style: TextStyle(color: Colors.white.withOpacity(0.12), fontSize: 40)),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                            GestureDetector(
                              onTap: () {
                                selectedDate = '9';
                                setState(() {});
                              },
                              child: Container(
                                width: 69,
                                height: 33,
                                decoration: BoxDecoration(
                                    color: selectedDate == '9' ? const Color(0xffEAF180) : const Color(0xff333333),
                                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Text(
                                    '9',
                                    style: TextStyle(color: selectedDate == '9' ? Colors.black : Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                            GestureDetector(
                              onTap: () {
                                selectedDate = '10';
                                setState(() {});
                              },
                              child: Container(
                                width: 69,
                                height: 33,
                                decoration: BoxDecoration(
                                    color: selectedDate == '10' ? const Color(0xffEAF180) : const Color(0xff333333),
                                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Text(
                                    '10',
                                    style: TextStyle(color: selectedDate == '10' ? Colors.black : Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                            GestureDetector(
                              onTap: () {
                                selectedDate = '11';
                                setState(() {});
                              },
                              child: Container(
                                width: 36,
                                height: 33,
                                decoration: BoxDecoration(
                                    color: selectedDate == '11' ? const Color(0xffEAF180) : const Color(0xff333333),
                                    borderRadius: const BorderRadius.all(Radius.circular(50))),
                                child: Center(
                                  child: Text(
                                    '11',
                                    style: TextStyle(color: selectedDate == '11' ? Colors.black : Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                            GestureDetector(
                              onTap: () {
                                selectedDate = 'VIP 21';
                                setState(() {});
                              },
                              child: Container(
                                width: 70,
                                height: 51,
                                decoration: BoxDecoration(
                                    color: selectedDate == 'VIP 21' ? const Color(0xffEAF180) : const Color(0xff333333),
                                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Text(
                                    'VIP \n21',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: selectedDate == 'VIP 21' ? Colors.black : Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                            GestureDetector(
                              onTap: () {
                                selectedDate = '20';
                                setState(() {});
                              },
                              child: Container(
                                width: 39,
                                height: 51,
                                decoration: BoxDecoration(
                                    color: selectedDate == '20' ? const Color(0xffEAF180) : const Color(0xff333333),
                                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Text(
                                    '20',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: selectedDate == '20' ? Colors.black : Colors.white),
                                  ),
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
                            GestureDetector(
                              onTap: () {
                                selectedDate = '8';
                                setState(() {});
                              },
                              child: Container(
                                width: 69,
                                height: 33,
                                decoration: BoxDecoration(
                                    color: selectedDate == '8' ? const Color(0xffEAF180) : const Color(0xff333333),
                                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Text(
                                    '8',
                                    style: TextStyle(color: selectedDate == '8' ? Colors.black : Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              width: 33,
                              height: 51,
                              decoration: BoxDecoration(color: Colors.white.withOpacity(0.44), borderRadius: const BorderRadius.all(Radius.circular(10))),
                              child: const Center(
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
                            GestureDetector(
                              onTap: () {
                                selectedDate = '7';
                                setState(() {});
                              },
                              child: Container(
                                width: 69,
                                height: 33,
                                decoration: BoxDecoration(
                                    color: selectedDate == '7' ? const Color(0xffEAF180) : const Color(0xff333333),
                                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Text(
                                    '7',
                                    style: TextStyle(color: selectedDate == '7' ? Colors.black : Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.125),
                            GestureDetector(
                              onTap: () {
                                selectedDate = '13';
                                setState(() {});
                              },
                              child: Container(
                                width: 68,
                                height: 33,
                                decoration: BoxDecoration(
                                    color: selectedDate == '13' ? const Color(0xffEAF180) : const Color(0xff333333),
                                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Text(
                                    '13',
                                    style: TextStyle(color: selectedDate == '13' ? Colors.black : Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                            GestureDetector(
                              onTap: () {
                                selectedDate = '12';
                                setState(() {});
                              },
                              child: Container(
                                width: 72,
                                height: 33,
                                decoration: BoxDecoration(
                                    color: selectedDate == '12' ? const Color(0xffEAF180) : const Color(0xff333333),
                                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Text(
                                    '12',
                                    style: TextStyle(color: selectedDate == '12' ? Colors.black : Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: MediaQuery.of(context).size.width * 0.05 + 7),
                            Column(
                              children: [
                                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                                GestureDetector(
                                  onTap: () {
                                    selectedDate = '6';
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 62,
                                    height: 33,
                                    decoration: BoxDecoration(
                                        color: selectedDate == '6' ? const Color(0xffEAF180) : const Color(0xff333333),
                                        borderRadius: const BorderRadius.all(Radius.circular(10))),
                                    child: Center(
                                      child: Text(
                                        '6',
                                        style: TextStyle(color: selectedDate == '6' ? Colors.black : Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                                GestureDetector(
                                  onTap: () {
                                    selectedDate = '5';
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 62,
                                    height: 33,
                                    decoration: BoxDecoration(
                                        color: selectedDate == '5' ? const Color(0xffEAF180) : const Color(0xff333333),
                                        borderRadius: const BorderRadius.all(Radius.circular(10))),
                                    child: Center(
                                      child: Text(
                                        '5',
                                        style: TextStyle(color: selectedDate == '5' ? Colors.black : Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.08),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    selectedDate = '15';
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 85,
                                    height: 33,
                                    decoration: BoxDecoration(
                                        color: selectedDate == '15' ? const Color(0xffEAF180) : const Color(0xff333333),
                                        borderRadius: const BorderRadius.all(Radius.circular(10))),
                                    child: Center(
                                      child: Text(
                                        '15',
                                        style: TextStyle(color: selectedDate == '15' ? Colors.black : Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                                GestureDetector(
                                  onTap: () {
                                    selectedDate = '17';
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 85,
                                    height: 33,
                                    decoration: BoxDecoration(
                                        color: selectedDate == '17' ? const Color(0xffEAF180) : const Color(0xff333333),
                                        borderRadius: const BorderRadius.all(Radius.circular(10))),
                                    child: Center(
                                      child: Text(
                                        '17',
                                        style: TextStyle(color: selectedDate == '17' ? Colors.black : Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.0125),
                                GestureDetector(
                                  onTap: () {
                                    selectedDate = '19';
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 68,
                                    height: 33,
                                    decoration: BoxDecoration(
                                        color: selectedDate == '19' ? const Color(0xffEAF180) : const Color(0xff333333),
                                        borderRadius: const BorderRadius.all(Radius.circular(10))),
                                    child: Center(
                                      child: Text(
                                        '19',
                                        style: TextStyle(color: selectedDate == '19' ? Colors.black : Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    selectedDate = '14';
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 85,
                                    height: 33,
                                    decoration: BoxDecoration(
                                        color: selectedDate == '14' ? const Color(0xffEAF180) : const Color(0xff333333),
                                        borderRadius: const BorderRadius.all(Radius.circular(10))),
                                    child: Center(
                                      child: Text(
                                        '14',
                                        style: TextStyle(color: selectedDate == '14' ? Colors.black : Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                                GestureDetector(
                                  onTap: () {
                                    selectedDate = '16';
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 85,
                                    height: 33,
                                    decoration: BoxDecoration(
                                        color: selectedDate == '16' ? const Color(0xffEAF180) : const Color(0xff333333),
                                        borderRadius: const BorderRadius.all(Radius.circular(10))),
                                    child: Center(
                                      child: Text(
                                        '16',
                                        style: TextStyle(color: selectedDate == '16' ? Colors.black : Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.0125),
                                GestureDetector(
                                  onTap: () {
                                    selectedDate = '18';
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 68,
                                    height: 33,
                                    decoration: BoxDecoration(
                                        color: selectedDate == '18' ? const Color(0xffEAF180) : const Color(0xff333333),
                                        borderRadius: const BorderRadius.all(Radius.circular(10))),
                                    child: Center(
                                      child: Text(
                                        '18',
                                        style: TextStyle(color: selectedDate == '18' ? Colors.black : Colors.white),
                                      ),
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
                                    GestureDetector(
                                      onTap: () {
                                        selectedDate = '4';
                                        setState(() {});
                                      },
                                      child: Container(
                                        width: 73,
                                        height: 33,
                                        decoration: BoxDecoration(
                                            color: selectedDate == '4' ? const Color(0xffEAF180) : const Color(0xff333333),
                                            borderRadius: const BorderRadius.all(Radius.circular(10))),
                                        child: Center(
                                          child: Text(
                                            '4',
                                            style: TextStyle(color: selectedDate == '4' ? Colors.black : Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width * 0.18),
                                    GestureDetector(
                                      onTap: () {
                                        selectedDate = '2';
                                        setState(() {});
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.only(top: 5),
                                        width: 41,
                                        height: 73,
                                        decoration: BoxDecoration(
                                            color: selectedDate == '2' ? const Color(0xffEAF180) : const Color(0xff333333),
                                            borderRadius: const BorderRadius.all(Radius.circular(10))),
                                        child: Center(
                                          child: Text(
                                            '2',
                                            style: TextStyle(color: selectedDate == '2' ? Colors.black : Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                                    GestureDetector(
                                      onTap: () {
                                        selectedDate = '1';
                                        setState(() {});
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.only(top: 5),
                                        width: 41,
                                        height: 73,
                                        decoration: BoxDecoration(
                                            color: selectedDate == '1' ? const Color(0xffEAF180) : const Color(0xff333333),
                                            borderRadius: const BorderRadius.all(Radius.circular(10))),
                                        child: Center(
                                          child: Text(
                                            '1',
                                            style: TextStyle(color: selectedDate == '1' ? Colors.black : Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                            GestureDetector(
                              onTap: () {
                                selectedDate = '3';
                                setState(() {});
                              },
                              child: Container(
                                width: 36,
                                height: 33,
                                decoration: BoxDecoration(
                                    color: selectedDate == '3' ? const Color(0xffEAF180) : const Color(0xff333333),
                                    borderRadius: const BorderRadius.all(Radius.circular(50))),
                                child: Center(
                                  child: Text(
                                    '3',
                                    style: TextStyle(color: selectedDate == '3' ? Colors.black : Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.14),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(color: Colors.white.withOpacity(0.44), borderRadius: const BorderRadius.all(Radius.circular(10))),
                              child: const Center(
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
                              margin: const EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(color: Colors.white.withOpacity(0.44), borderRadius: const BorderRadius.all(Radius.circular(10))),
                              child: const Center(
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
                        decoration: BoxDecoration(color: Colors.white.withOpacity(0.44), borderRadius: const BorderRadius.all(Radius.circular(10))),
                        child: const Center(
                          child: Text(
                            'Бар',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FinishingTouch(
                                  seat: this.selectedDate,
                                  selectDate: widget.selectDateMonth,
                                )));
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
                      Image.asset(
                        "assets/images/button.png",
                        fit: BoxFit.cover,
                      ),
                      const Text(
                        'ДАЛЕЕ',
                        style: TextStyle(letterSpacing: 3.75, fontSize: 24, fontFamily: "Poppins", fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: const ProjectBottomNavBar(),
      ),
    );
  }
}
