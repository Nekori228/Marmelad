import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../globals.dart';
import '../../isons/custom_icons.dart';
import '../../pages/main/bookingPage.dart';
import '../../pages/main/homeMaimPage.dart';
import '../../pages/main/profilePage.dart';
import '../../pages/main/сartPage.dart';

class ProjectBottomNavBar extends StatefulWidget {
  const ProjectBottomNavBar({Key? key}) : super(key: key);

  @override
  State<ProjectBottomNavBar> createState() => _ProjectBottomNavBarState();
}

class _ProjectBottomNavBarState extends State<ProjectBottomNavBar> {
  void onSelectTab(int index) {
    var listWidget = [
      const HomeMainPage(),
      const CartScreen(),
      const BookingPage(),
      const ProfilePage(),
    ];
    if (selectedPage != index) {
      setState(() {
        selectedPage = index;
      });
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => listWidget[selectedPage]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(CustomIcons.home_2,
                      color: selectedPage == 0
                          ? Color(0xFFF7FF88)
                          : Color(0xFF858582)),
                  onPressed: () {
                    onSelectTab(0);
                  },
                ),
                Text('1', style: TextStyle(color: Colors.white),)
              ],
            ),
            IconButton(
              icon: Icon(CustomIcons.group,
                  color: selectedPage == 1
                      ? Color(0xFFF7FF88)
                      : Color(0xFF858582)),
              onPressed: () {
                onSelectTab(1);
              },
            ),
            IconButton(
              icon: Icon(CustomIcons.group_2,
                  color: selectedPage == 2
                      ? Color(0xFFF7FF88)
                      : Color(0xFF858582)),
              onPressed: () {
                onSelectTab(2);
              },
            ),
            IconButton(
              icon: Icon(CustomIcons.group_3,
                  color: selectedPage == 3
                      ? Color(0xFFF7FF88)
                      : Color(0xFF858582)),
              onPressed: () {
                onSelectTab(3);
              },
            ),
          ]),
    );
  }
}
