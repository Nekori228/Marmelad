import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import '../../globals.dart';
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
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => listWidget[selectedPage]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, mainAxisSize: MainAxisSize.min, children: [
        SizedBox(
          width: 80,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: selectedPage == 0 ? Image.asset('assets/images/main_pressed.png') : Image.asset("assets/images/main.png"),
                onPressed: () {
                  onSelectTab(0);
                },
              ),
              Text(
                'Главная\n',
                style: TextStyle(color: selectedPage == 0 ? Color(0xFFF7FF88) : Color(0xFF858582)),
              )
            ],
          ),
        ),
        SizedBox(
          width: 80,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: GestureDetector(
                  child: badges.Badge(
                    child: selectedPage == 1
                        ? Image.asset(
                            'assets/images/cart_pressed.png',
                            height: 30,
                          )
                        : Image.asset(
                            "assets/images/cart"
                            ".png",
                            height: 30),
                    badgeContent: Text(card.length.toString(), style: TextStyle(color: Colors.white),),
                    badgeStyle: badges.BadgeStyle(badgeColor: Color(0xff292929)),
                  ),
                  onTap: () {
                    onSelectTab(1);
                  },
                ),
              ),
              Text(
                'Корзина\n',
                style: TextStyle(color: selectedPage == 1 ? Color(0xFFF7FF88) : Color(0xFF858582)),
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
                icon: selectedPage == 2
                    ? Image.asset('assets/images/calendar_pressed.png')
                    : Image.asset(
                        "assets/images/calendar.png",
                      ),
                onPressed: () {
                  onSelectTab(2);
                },
              ),
              Text(
                'Бронирование',
                textAlign: TextAlign.center,
                style: TextStyle(color: selectedPage == 2 ? Color(0xFFF7FF88) : Color(0xFF858582)),
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
                icon: selectedPage == 3
                    ? Image.asset('assets/images/person_pressed.png')
                    : Image.asset(
                        "assets/images/person.png",
                      ),
                onPressed: () {
                  onSelectTab(3);
                },
              ),
              Text(
                'Профиль\n',
                style: TextStyle(color: selectedPage == 3 ? Color(0xFFF7FF88) : Color(0xFF858582)),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
