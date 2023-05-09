import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 110,
      backgroundColor: Colors.black,
      centerTitle: false,
      iconTheme: IconThemeData(color: Colors.white),
      title: Container(
        child: Text(
          'Оформление и \nоплата',
          style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 40,
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
