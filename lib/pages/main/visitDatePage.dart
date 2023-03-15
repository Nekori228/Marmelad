import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

import '../../widgets/appBar/VisitDateAppBar.dart';

class VisitDatePage extends StatelessWidget {
  final calendarController = CleanCalendarController(
    minDate: DateTime.now(),
    maxDate: DateTime.now().add(const Duration(days: 365)),
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
      home: Scaffold(
        backgroundColor: Color(0xFF000000),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0), child: VisitDateAppBar()),
        // floatingActionButton: FloatingActionButton(
        //   child: const Icon(Icons.arrow_downward),
        //   onPressed: () {
        //     calendarController.jumpToMonth(date: DateTime(2022, 8));
        //   },
        // ),
        body: ScrollableCleanCalendar(
          calendarController: calendarController,
          layout: Layout.BEAUTY,
          calendarCrossAxisSpacing: 0,
        ),
      ),
    );
  }
}
