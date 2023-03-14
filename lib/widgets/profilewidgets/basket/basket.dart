import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasketWidget extends StatelessWidget {
  const BasketWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Text(
                  'Корзина',
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 40,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Text(
                    'У вас прекрасный \nвыбор',
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
                  Image.asset("assets/gifs/store.gif", fit: BoxFit.cover),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
