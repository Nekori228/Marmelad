import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marmelad/pages/%D1%81artPage.dart';
import 'package:marmelad/pages/profilePage.dart';
import 'package:marmelad/pages/signUp.dart';
import 'package:marmelad/widgets/hello.dart';
import 'package:marmelad/pages/theme.dart';
import 'package:marmelad/widgets/items.dart';

import '../isons/custom_icons.dart';
import '../widgets/booking.dart';
import '../widgets/tabs.dart';
import 'bookingPage.dart';
import 'homeMaimPage.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeMarmelad,
      home: bottomNavigation(),
    );
  }
}

class bottomNavigation extends StatefulWidget {
  const bottomNavigation({Key? key}) : super(key: key);

  @override
  State<bottomNavigation> createState() => _pagesState();
}

class _pagesState extends State<bottomNavigation> {

  int _selectedPage = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeMainPage(),
    CartScreen(),
    BookingPage(),
    ProfilePage(),
  ];

  void onSelectTab(int index) {
    if (_selectedPage == index) return;
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body:  Center(
          child: _widgetOptions[_selectedPage],
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Color(0xFF858582),
          backgroundColor: Colors.black,
          selectedItemColor: Color(0xFFF7FF88),
          currentIndex: _selectedPage,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(CustomIcons.home_2),
                label: 'Главная'
            ),
            BottomNavigationBarItem(
                icon: Icon(CustomIcons.group),
                label: 'Корзина'
            ),
            BottomNavigationBarItem(
                icon: Icon(CustomIcons.group_2),
                label: 'Бронирование'
            ),
            BottomNavigationBarItem(
                icon: Icon(CustomIcons.group_3),
                label: 'Профиль'
            ),
          ],
          onTap: onSelectTab,
        ),
      ),
    );
  }
}

