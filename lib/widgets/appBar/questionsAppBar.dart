import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QuestionsAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      toolbarHeight: 85,
      backgroundColor: Colors.black,
      centerTitle: false,
      iconTheme: IconThemeData(color: Colors.white),
      title: Container(
        child: Text(
          'Часто задаваемые \nвопросы',
          style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 32,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold),
        ),
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
