import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CalendarDateAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 85,
      backgroundColor: Colors.black,
      centerTitle: false,
      iconTheme: IconThemeData(color: Colors.white),
      title: Container(
        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Выбери дату \nпосещения',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 32,
                fontFamily: 'Overpass-Black',
              ),
            ),
          ],
        ),
      ),
      leading: IconButton(
          icon: SvgPicture.asset('assets/images/goback.svg',
              width: 30, height: 30),
          onPressed: () {
            Navigator.pop(context);
          }),
      actions: [SvgPicture.asset("assets/images/smale.svg")],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
