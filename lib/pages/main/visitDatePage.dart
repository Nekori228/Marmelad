import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/globals.dart';
import 'package:marmelad/pages/main/choosePlace.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

import '../../widgets/appBar/VisitDateAppBar.dart';
import '../../widgets/bar/bottomNavigationBar.dart';

class VisitDatePage extends StatefulWidget {
  @override
  State<VisitDatePage> createState() => _VisitDatePageState();
}

class _VisitDatePageState extends State<VisitDatePage> {
  dynamic maxDate = 0;
  var selectDate;
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
      onDayTapped: (date) {
        selectDate = '${date.day} ${dateMonth[date.month]!}';
        print(date);
        setState(() {});
      },
      rangeMode: false,
      // readOnly: true,
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
        backgroundColor: Color(0xFF000000),
        appBar: PreferredSize(preferredSize: Size.fromHeight(150), child: VisitDateAppBar()),
        // floatingActionButton: FloatingActionButton(
        //   child: const Icon(Icons.arrow_downward),
        //   onPressed: () {
        //     calendarController.jumpToMonth(date: DateTime(2022, 8));
        //   },
        // ),
        body: Column(
          children: [
            Expanded(
              child: ScrollableCleanCalendar(
                calendarController: calendarController,
                layout: Layout.BEAUTY,
                calendarCrossAxisSpacing: 0,
                dayDisableColor: Colors.white,
                dayBackgroundColor: Colors.black,
                dayDisableBackgroundColor: Colors.black,
                daySelectedBackgroundColor: Color(0xFFF7FF88),
              ),
            ),
            selectDate != null
                ? Container(
                    margin: EdgeInsets.only(bottom: 50),
                    child: Text(selectDate, style: TextStyle(color: Colors.white.withOpacity(0.15), fontSize: 60, fontWeight: FontWeight.w700)))
                : Container(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChoosePlacePage(
                          selectDateMonth: selectDate,
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
                  Image.asset("assets/images/button.png", fit: BoxFit.cover),
                  Text(
                    'ДАЛЕЕ',
                    style: TextStyle(letterSpacing: 3.75, fontSize: 24, fontFamily: "Poppins", fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: ProjectBottomNavBar(),
      ),
    );
  }
}
