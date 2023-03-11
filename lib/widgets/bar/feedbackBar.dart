import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FeedbackBarWidget extends StatelessWidget {
  const FeedbackBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Container(
                  margin: EdgeInsets.fromLTRB(240, 30, 70, 0),
                  child: SvgPicture.asset("assets/images/smale.svg",
                      fit: BoxFit.cover),
                ),
              ),
              Text(
                'Обратная\nсвязь',
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 54,
                    height: 1,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: Text(
                  'Обратная связь всегда \nважна для нас',
                  style: TextStyle(
                      color: Color(0xFF666666),
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
