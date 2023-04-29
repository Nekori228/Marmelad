import 'package:flutter/material.dart';

class FavoriteAppBar extends StatelessWidget with PreferredSizeWidget {
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
          fontWeight: FontWeight.bold
        ),
      ),
      leading: IconButton(
          icon: Icon(
            Icons.arrow_circle_left,
            size: 40,
          ),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
