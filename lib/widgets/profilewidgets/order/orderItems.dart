import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderItemsCooking1 extends StatelessWidget {
  const OrderItemsCooking1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03),
      child: ElevatedButton(
        onPressed: () {},
        clipBehavior: Clip.antiAlias,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF0D0D0D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.zero,
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(15),
                child: Image.asset("assets/images/item1_order.png")),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ЗАКАЗ 912',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontFamily: "Overpass-Bold",
                            fontSize: 14),
                      ),
                      Text(
                        'Статус: готовится',
                        style: TextStyle(
                            color: Color(0xFFF7FF88),
                            fontFamily: "Overpass-Bold",
                            fontSize: 12),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 140,
                              height: 60,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "• ",
                                        style: TextStyle(
                                            color:
                                                Color(0xFFFFFFFF).withOpacity(0.47),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            fontFamily: 'Inter'),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Фреш ролл с креветкой',
                                          style: TextStyle(
                                              color:
                                                  Color(0xFFFFFFFF).withOpacity(0.47),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              fontFamily: 'Inter'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "• ",
                                        style: TextStyle(
                                            color:
                                                Color(0xFFFFFFFF).withOpacity(0.47),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            fontFamily: 'Inter'),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Чизкейк',
                                          style: TextStyle(
                                              color:
                                                  Color(0xFFFFFFFF).withOpacity(0.47),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              fontFamily: 'Inter'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Text(
                              '1200 ₽',
                              style:
                                  TextStyle(color: Color(0xFFF7FF88), fontSize: 20),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


class OrderItemsReady1 extends StatelessWidget {
  const OrderItemsReady1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03),
      child: ElevatedButton(
        onPressed: () {},
        clipBehavior: Clip.antiAlias,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF0D0D0D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.zero,
        ),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.all(15),
                child: Image.asset("assets/images/item1_order.png")),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ЗАКАЗ 912',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: "Overpass-Bold",
                          fontSize: 14),
                    ),
                    Text(
                      'Статус: готов',
                      style: TextStyle(
                          color: Color(0xFFF7FF88),
                          fontFamily: "Overpass-Bold",
                          fontSize: 12),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 140,
                            height: 60,
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "• ",
                                      style: TextStyle(
                                          color:
                                          Color(0xFFFFFFFF).withOpacity(0.47),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          fontFamily: 'Inter'),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Фреш ролл с креветкой',
                                        style: TextStyle(
                                            color:
                                            Color(0xFFFFFFFF).withOpacity(0.47),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            fontFamily: 'Inter'),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "• ",
                                      style: TextStyle(
                                          color:
                                          Color(0xFFFFFFFF).withOpacity(0.47),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          fontFamily: 'Inter'),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Чизкейк',
                                        style: TextStyle(
                                            color:
                                            Color(0xFFFFFFFF).withOpacity(0.47),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            fontFamily: 'Inter'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Text(
                            '1200 ₽',
                            style:
                            TextStyle(color: Color(0xFFF7FF88), fontSize: 20),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OrderItemsDelivery1 extends StatelessWidget {
  const OrderItemsDelivery1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03),
      child: ElevatedButton(
        onPressed: () {},
        clipBehavior: Clip.antiAlias,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF0D0D0D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.zero,
        ),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.all(15),
                child: Image.asset("assets/images/item1_order.png")),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ЗАКАЗ 912',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: "Overpass-Bold",
                          fontSize: 14),
                    ),
                    Text(
                      'Статус: в доствке',
                      style: TextStyle(
                          color: Color(0xFFF7FF88),
                          fontFamily: "Overpass-Bold",
                          fontSize: 12),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 140,
                            height: 60,
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "• ",
                                      style: TextStyle(
                                          color:
                                          Color(0xFFFFFFFF).withOpacity(0.47),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          fontFamily: 'Inter'),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Фреш ролл с креветкой',
                                        style: TextStyle(
                                            color:
                                            Color(0xFFFFFFFF).withOpacity(0.47),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            fontFamily: 'Inter'),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "• ",
                                      style: TextStyle(
                                          color:
                                          Color(0xFFFFFFFF).withOpacity(0.47),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          fontFamily: 'Inter'),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Чизкейк',
                                        style: TextStyle(
                                            color:
                                            Color(0xFFFFFFFF).withOpacity(0.47),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            fontFamily: 'Inter'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Text(
                            '1200 ₽',
                            style:
                            TextStyle(color: Color(0xFFF7FF88), fontSize: 20),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OrderItemsFinish1 extends StatelessWidget {
  const OrderItemsFinish1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03),
      child: ElevatedButton(
        onPressed: () {},
        clipBehavior: Clip.antiAlias,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF0D0D0D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.zero,
        ),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.all(15),
                child: Image.asset("assets/images/item1_order.png")),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ЗАКАЗ 912',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: "Overpass-Bold",
                          fontSize: 14),
                    ),
                    Text(
                      'Статус: завершен 12.09.2022',
                      style: TextStyle(
                          color: Color(0xFF7F7F7F),
                          fontFamily: "Overpass-Bold",
                          fontSize: 12),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 140,
                            height: 60,
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "• ",
                                      style: TextStyle(
                                          color:
                                          Color(0xFFFFFFFF).withOpacity(0.47),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          fontFamily: 'Inter'),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Фреш ролл с креветкой',
                                        style: TextStyle(
                                            color:
                                            Color(0xFFFFFFFF).withOpacity(0.47),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            fontFamily: 'Inter'),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "• ",
                                      style: TextStyle(
                                          color:
                                          Color(0xFFFFFFFF).withOpacity(0.47),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          fontFamily: 'Inter'),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Чизкейк',
                                        style: TextStyle(
                                            color:
                                            Color(0xFFFFFFFF).withOpacity(0.47),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            fontFamily: 'Inter'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Text(
                            '1200 ₽',
                            style:
                            TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}