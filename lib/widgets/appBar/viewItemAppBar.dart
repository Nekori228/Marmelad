import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ViewItemAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      leading: IconButton(
        icon: SvgPicture.asset('assets/images/goback.svg', width: 30, height: 30),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset('assets/images/Like.svg', width: 30, height: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
