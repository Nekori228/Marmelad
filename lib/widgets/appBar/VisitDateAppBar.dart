import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VisitDateAppBar extends StatelessWidget implements PreferredSizeWidget {
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
              'Выбор места',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 32,
                fontFamily: 'Overpass-Black',
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Text(
                'Темные - занятые\nстолы, а желтые\nсвободные',
                style: TextStyle(
                  color: Color(0xFF666666),
                  fontSize: 14,
                  fontFamily: 'Overpass-Black',
                ),
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
