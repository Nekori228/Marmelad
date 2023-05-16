import 'package:flutter/material.dart';

class authAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: false,
      iconTheme: IconThemeData(color: Colors.white),
      title: Text(
        'РЕГИСТРАЦИЯ',
        style: TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 37,
          fontFamily: 'Overpass-Black',
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
