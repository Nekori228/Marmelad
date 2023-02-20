import 'package:flutter/material.dart';

class appBarMarmelad extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.white),
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
