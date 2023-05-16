import 'package:flutter/material.dart';

class passwordWerf extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: false,
      iconTheme: IconThemeData(color: Colors.white),
      title: Text(
        'ВЕРИФИКАЦИЯ',
        style: TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 37,
          fontFamily: 'Overpass-Black',
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
