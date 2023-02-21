import 'package:flutter/cupertino.dart';

class BookingWidget extends StatelessWidget {
  const BookingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage("assets/images/bookingImage.png"),
              fit: BoxFit.cover)),
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Text(
                  'Бронирование',
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontFamily: "Overpass-SemiBold",
                      fontSize: 22),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Text(
                  '14 столик',
                  style: TextStyle(
                      color: Color(0xFF22DD85),
                      fontFamily: "Overpass-Bold",
                      fontSize: 43),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Row(
                children: [
                  Icon(CupertinoIcons.calendar,
                      color: Color(0xFFFFFFFF).withOpacity(0.5)),
                  Text(
                    '1 человек, сегодня в 12:00',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(0.5)),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 5, 0, 20),
              child: Row(
                children: [
                  Icon(CupertinoIcons.map_pin,
                      color: Color(0xFFFFFFFF).withOpacity(0.5)),
                  Text(
                    'Иосифа Каролинского 4, 2 этаж',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(0.5)),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 5, 0, 20),
              child: Icon(CupertinoIcons.calendar_badge_minus,
                color: Color(0xFFF7FF88), size: 29,),
            ),
          ],
        ),
      ),
    );
  }
}
