import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            SizedBox(
              width: 80,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: SvgPicture.asset("assets/images/Home.svg",
                        color: selectedPage == 0
                            ? Color(0xFFF7FF88)
                            : Color(0xFF858582)),
                    onPressed: () {
                      onSelectTab(0);
                    },
                  ),
                  Text(
                    'Главная',
                    style: TextStyle(
                        color: selectedPage == 0
                            ? Color(0xFFF7FF88)
                            : Color(0xFF858582)),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 80,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: SvgPicture.asset("assets/images/Group.svg",
                        color: selectedPage == 1
                            ? Color(0xFFF7FF88)
                            : Color(0xFF858582)),
                    onPressed: () {
                      onSelectTab(1);
                    },
                  ),
                  Text(
                    'Корзина',
                    style: TextStyle(
                        color: selectedPage == 1
                            ? Color(0xFFF7FF88)
                            : Color(0xFF858582)),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 80,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: SvgPicture.asset("assets/images/Group2.svg",
                        color: selectedPage == 2
                            ? Color(0xFFF7FF88)
                            : Color(0xFF858582)),
                    onPressed: () {
                      onSelectTab(2);
                    },
                  ),
                  Text(
                    'Бронирование',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: selectedPage == 2
                            ? Color(0xFFF7FF88)
                            : Color(0xFF858582)),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 80,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: SvgPicture.asset("assets/images/Person.svg",
                        color: selectedPage == 3
                            ? Color(0xFFF7FF88)
                            : Color(0xFF858582)),
                    onPressed: () {
                      onSelectTab(3);
                    },
                  ),
                  Text(
                    'Профиль',
                    style: TextStyle(
                        color: selectedPage == 3
                            ? Color(0xFFF7FF88)
                            : Color(0xFF858582)),
                  )
                ],
              ),
            ),
          ]),
    );
  }
}
