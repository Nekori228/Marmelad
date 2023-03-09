import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(140, 30, 110, 0),
                    child: SvgPicture.asset("assets/images/smale.svg",
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  'Привет',
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 54,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Text(
                    '+79888888999',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(0.4),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(220, 0, 1, 0),
                  child:
                  Image.asset("assets/gifs/higif.gif", fit: BoxFit.cover),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
