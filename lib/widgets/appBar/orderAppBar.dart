import 'package:flutter/material.dart';
import 'package:marmelad/globals.dart';

class OrderAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: false,
      iconTheme: const IconThemeData(color: Colors.white),
      title: const Text(
        'Заказы',
        style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 40, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
          icon: const Icon(
            Icons.arrow_circle_left,
            size: 40,
          ),
          onPressed: () {
            selectedPageBottomBar = 0;
            setStateMainPageCallback(() {});
            Navigator.pop(context);
            Navigator.pop(context);
          }),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
