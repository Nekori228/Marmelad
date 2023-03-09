import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookingBarWidget extends StatelessWidget {
  const BookingBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Container(
                  margin: EdgeInsets.fromLTRB(190, 30, 110, 0),
                  child: SvgPicture.asset("assets/images/smale.svg",
                      fit: BoxFit.cover),
                ),
              ),
              Text(
                'Бронирование',
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 36,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Text(
                  'Отлично провести \nвремя',
                  style: TextStyle(
                      color: Color(0xFFFFFFFF).withOpacity(0.4),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
