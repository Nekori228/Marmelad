import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: false,
      iconTheme: IconThemeData(color: Colors.white),
      title: Text(
        'Избранное',
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
            Navigator.pop(context);
          }),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
