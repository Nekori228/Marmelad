import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marmelad/globals.dart';

class OrderAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: false,
      iconTheme: const IconThemeData(color: Colors.white),
      title: const Text(
        'Заказы',
        style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 40,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
          icon: SvgPicture.asset('assets/images/goback.svg',
              width: 30, height: 30),
          onPressed: () {
            selectedPageBottomBar = 0;
            Navigator.pop(context);
          }),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
