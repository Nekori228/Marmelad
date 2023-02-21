import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item1 extends StatelessWidget {
  const Item1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      clipBehavior: Clip.antiAlias,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFFFFFFF).withOpacity(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.zero,
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/images/item1.png"),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.03),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Text(
                            "ФРЕШ РОЛЛЫ С КРЕВЕТКОЙ",
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: "Overpass-Bold",
                                fontSize: 16),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(
                              "200гр",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(0.3),
                                  fontFamily: "Overpass-Bold",
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.star,
                        color: Color(0xFFF7FF88),
                        size: 20,
                      ),
                      Text(
                        "4.8",
                        style: TextStyle(color: Color(0xFFF7FF88)),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 230,
                      height: 60,
                      child: Text(
                        'Ролл из рисовой бумаги с креветкой и манго с соусом чили',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF).withOpacity(0.5),
                            fontFamily: "Overpass-SemiBold",
                            fontSize: 16),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '300 ₽',
                      style: TextStyle(
                          color: Color(0xFFF7FF88),
                          fontSize: 20
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      clipBehavior: Clip.antiAlias,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFFFFFFF).withOpacity(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.zero,
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/images/item2.png"),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.03),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Text(
                            "ЧИЗКЕЙК",
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: "Overpass-Bold",
                                fontSize: 16),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(
                              "200гр",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(0.3),
                                  fontFamily: "Overpass-Bold",
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.star,
                        color: Color(0xFFF7FF88),
                        size: 20,
                      ),
                      Text(
                        "4.8",
                        style: TextStyle(color: Color(0xFFF7FF88)),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 230,
                      height: 60,
                      child: Text(
                        'Классическое блюдо американской кухни',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF).withOpacity(0.5),
                            fontFamily: "Overpass-SemiBold",
                            fontSize: 16),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '200 ₽',
                      style: TextStyle(
                          color: Color(0xFFF7FF88),
                          fontSize: 20
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
