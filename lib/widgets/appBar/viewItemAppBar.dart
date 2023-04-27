import 'package:flutter/material.dart';

class ViewItemAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      title: IconButton(
          icon: Icon(
            Icons.add_circle,
            size: 34,
          ),
          onPressed: () {
            Navigator.pop(context);
          }),
      leading: IconButton(
          icon: Icon(
            Icons.arrow_circle_left,
            size: 34,
          ),
          onPressed: () {
            Navigator.pop(context);
          }),
      actions: [
        IconButton(
            icon: Icon(
              Icons.circle_notifications,
              size: 34,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
