import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VisitDateAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      toolbarHeight: 85,
      backgroundColor: Colors.black,
      centerTitle: false,
      iconTheme: IconThemeData(color: Colors.white),
      title: Text(
        'Выбери дату \nпосещения',
        style: TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 36,
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
      actions: [SvgPicture.asset("assets/images/smale.svg")],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
