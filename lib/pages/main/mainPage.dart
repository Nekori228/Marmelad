import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/globals.dart';
import 'package:marmelad/pages/main/%D1%81artPage.dart';
import 'package:marmelad/pages/main/profilePage.dart';
import 'package:marmelad/widgets/theme.dart';
import '../../isons/custom_icons.dart';
import '../../widgets/bar/bottomNavigationBar.dart';
import 'bookingPage.dart';
import 'homeMaimPage.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  void initFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  @override
  void initState() {
    initFirebase();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeMarmelad,
      home: StatefulBuilder(
        builder: (context, setStateMainPage) {
          return bottomNavigation();
        }
      ),
    );
  }
}

class bottomNavigation extends StatefulWidget {
  const bottomNavigation({Key? key}) : super(key: key);

  @override
  State<bottomNavigation> createState() => _pagesState();
}

class _pagesState extends State<bottomNavigation> {

  static const List<Widget> _widgetOptions = <Widget>[
    HomeMainPage(),
    CartScreen(),
    BookingPage(),
    ProfilePage(),
  ];

  void onSelectTab(int index) {
    if (selectedPageBottomBar == index) return;
    setState(() {
      selectedPageBottomBar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body:  Center(
          child: _widgetOptions[selectedPageBottomBar],
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   unselectedItemColor: Color(0xFF858582),
        //   backgroundColor: Colors.black,
        //   selectedItemColor: Color(0xFFF7FF88),
        //   currentIndex: selectedPageBottomBar,
        //   type: BottomNavigationBarType.fixed,
        //   items: [
        //     BottomNavigationBarItem(
        //         icon: Icon(CustomIcons.home_2),
        //         label: 'Главная'
        //     ),
        //     BottomNavigationBarItem(
        //         icon: Icon(CustomIcons.group),
        //         label: 'Корзина'
        //     ),
        //     BottomNavigationBarItem(
        //         icon: Icon(CustomIcons.group_2),
        //         label: 'Бронирование'
        //     ),
        //     BottomNavigationBarItem(
        //         icon: Icon(CustomIcons.group_3),
        //         label: 'Профиль'
        //     ),
        //   ],
        //   onTap: onSelectTab,
        // ),
      ),
    );
  }
}

