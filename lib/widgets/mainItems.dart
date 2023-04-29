import 'dart:convert';

import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/globals.dart';

import '../pages/main/viewItem.dart';
import '../pages/main/viewItem2.dart';
import '../pages/main/viewItem3.dart';
import '../pages/main/viewItem4.dart';

class Item1 extends StatelessWidget {
  const Item1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ViewItem(),
          ),
        );
      },
      clipBehavior: Clip.antiAlias,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFFFFFFF).withOpacity(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.zero,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/item1.png"),
                Positioned(
                  right: 25,
                  top: 25,
                  child: FavoriteButton(
                    isFavorite: favourites.firstWhere((element) => element['name'] == 'Фреш роллы с креветкой', orElse: () {
                          return false;
                        }) !=
                        false,
                    iconSize: 30,
                    iconDisabledColor: Colors.white,
                    valueChanged: (isFavorite) {
                      if (isFavorite == true) {
                        favourites.firstWhere((element) => element['name'] == 'Фреш роллы с креветкой', orElse: () {
                          favourites.add({
                            'name': 'Фреш роллы с '
                                'креветкой',
                            'description':
                                'Фреш роллы с креветкой - это классическое азиатское блюдо, которое сочетает в себе хрустящую красоту свежих овощей с сочным вкусом сокрытой креветки. Роллы изготавливаются из мягких, тонких лепешек',
                            'weight': '200 гр',
                            'count': 1,
                            'price': 300
                          });
                        });
                        prefs.setString('favourites', jsonEncode(favourites));
                        print(favourites);
                      } else {
                        for (var i = 0; i < favourites.length; i++) {
                          if (favourites[i]['name'] == 'Фреш роллы с креветкой') {
                            favourites.removeAt(i);
                            prefs.setString('favourites', jsonEncode(favourites));
                            print(favourites);
                            break;
                          }
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
            Column(
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
                            style: TextStyle(color: Color(0xFFFFFFFF), fontFamily: "Overpass-Bold", fontSize: 16),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(
                              "200гр",
                              style: TextStyle(color: Color(0xFFFFFFFF).withOpacity(0.3), fontFamily: "Overpass-Bold", fontSize: 14),
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
                        style: TextStyle(color: Color(0xFFFFFFFF).withOpacity(0.5), fontFamily: "Overpass-SemiBold", fontSize: 16),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '300 ₽',
                      style: TextStyle(color: Color(0xFFF7FF88), fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ViewItem2(),
          ),
        );
      },
      clipBehavior: Clip.antiAlias,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFFFFFFF).withOpacity(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.zero,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/item2.png"),
                Positioned(
                  right: 25,
                  top: 25,
                  child: FavoriteButton(
                    isFavorite: favourites.firstWhere((element) => element['name'] == 'Чизкейк', orElse: () {
                          return false;
                        }) !=
                        false,
                    iconSize: 30,
                    iconDisabledColor: Colors.white,
                    valueChanged: (isFavorite) {
                      if (isFavorite == true) {
                        favourites.firstWhere((element) => element['name'] == 'Чизкейк', orElse: () {
                          favourites.add({
                            'name': 'Чизкейк',
                            'description':
                                'Фреш роллы с креветкой - это классическое азиатское блюдо, которое сочетает в себе хрустящую красоту свежих овощей с сочным вкусом сокрытой креветки. Роллы изготавливаются из мягких, тонких лепешек',
                            'weight': '200 гр',
                            'count': 1,
                            'price': 200
                          });
                        });
                        prefs.setString('favourites', jsonEncode(favourites));
                        print(favourites);
                      } else {
                        for (var i = 0; i < favourites.length; i++) {
                          if (favourites[i]['name'] == 'Чизкейк') {
                            favourites.removeAt(i);
                            prefs.setString('favourites', jsonEncode(favourites));
                            print(favourites);
                            break;
                          }
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
            Column(
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
                            style: TextStyle(color: Color(0xFFFFFFFF), fontFamily: "Overpass-Bold", fontSize: 16),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(
                              "200гр",
                              style: TextStyle(color: Color(0xFFFFFFFF).withOpacity(0.3), fontFamily: "Overpass-Bold", fontSize: 14),
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
                        style: TextStyle(color: Color(0xFFFFFFFF).withOpacity(0.5), fontFamily: "Overpass-SemiBold", fontSize: 16),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '200 ₽',
                      style: TextStyle(color: Color(0xFFF7FF88), fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ViewItem3(),
          ),
        );
      },
      clipBehavior: Clip.antiAlias,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFFFFFFF).withOpacity(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.zero,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/item3.png"),
                Positioned(
                  right: 25,
                  top: 25,
                  child: FavoriteButton(
                    isFavorite: favourites.firstWhere((element) => element['name'] == 'ВОДКА BELUGA', orElse: () {
                          return false;
                        }) !=
                        false,
                    iconSize: 30,
                    iconDisabledColor: Colors.white,
                    valueChanged: (isFavorite) {
                      if (isFavorite == true) {
                        favourites.firstWhere((element) => element['name'] == 'ВОДКА BELUGA', orElse: () {
                          favourites.add({
                            'name': 'ВОДКА BELUGA',
                            'description':
                                'Фреш роллы с креветкой - это классическое азиатское блюдо, которое сочетает в себе хрустящую красоту свежих овощей с сочным вкусом сокрытой креветки. Роллы изготавливаются из мягких, тонких лепешек',
                            'weight': '40 ml',
                            'count': 1,
                            'price': 195
                          });
                        });
                        prefs.setString('favourites', jsonEncode(favourites));
                        print(favourites);
                      } else {
                        for (var i = 0; i < favourites.length; i++) {
                          if (favourites[i]['name'] == 'ВОДКА BELUGA') {
                            favourites.removeAt(i);
                            prefs.setString('favourites', jsonEncode(favourites));
                            print(favourites);
                            break;
                          }
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Text(
                            "ВОДКА BELUGA",
                            style: TextStyle(color: Color(0xFFFFFFFF), fontFamily: "Overpass-Bold", fontSize: 14),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(
                              "40 ml",
                              style: TextStyle(color: Color(0xFFFFFFFF).withOpacity(0.3), fontFamily: "Overpass-Bold", fontSize: 14),
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
                        "4.1",
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
                        'Водка "Белуга" относится к классу элитных алкогольных напитков',
                        style: TextStyle(color: Color(0xFFFFFFFF).withOpacity(0.5), fontFamily: "Overpass-SemiBold", fontSize: 16),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '195 ₽',
                      style: TextStyle(color: Color(0xFFF7FF88), fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ViewItem4(),
          ),
        );
      },
      clipBehavior: Clip.antiAlias,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFFFFFFF).withOpacity(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.zero,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/item4.png"),
                Positioned(
                  right: 25,
                  top: 25,
                  child: FavoriteButton(
                    isFavorite: favourites.firstWhere((element) => element['name'] == 'ВИНО АЛЬМА ВЕЛЛИ', orElse: () {
                          return false;
                        }) !=
                        false,
                    iconSize: 30,
                    iconDisabledColor: Colors.white,
                    valueChanged: (isFavorite) {
                      if (isFavorite == true) {
                        favourites.firstWhere((element) => element['name'] == 'ВИНО АЛЬМА ВЕЛЛИ', orElse: () {
                          favourites.add({
                            'name': 'ВИНО АЛЬМА ВЕЛЛИ',
                            'description':
                                'Фреш роллы с креветкой - это классическое азиатское блюдо, которое сочетает в себе хрустящую красоту свежих овощей с сочным вкусом сокрытой креветки. Роллы изготавливаются из мягких, тонких лепешек',
                            'weight': '750 ml',
                            'count': 1,
                            'price': 2090
                          });
                        });
                        prefs.setString('favourites', jsonEncode(favourites));
                        print(favourites);
                      } else {
                        for (var i = 0; i < favourites.length; i++) {
                          if (favourites[i]['name'] == 'ВИНО АЛЬМА ВЕЛЛИ') {
                            favourites.removeAt(i);
                            prefs.setString('favourites', jsonEncode(favourites));
                            print(favourites);
                            break;
                          }
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Text(
                            "ВИНО АЛЬМА ВЕЛЛИ",
                            style: TextStyle(color: Color(0xFFFFFFFF), fontFamily: "Overpass-Bold", fontSize: 14),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(
                              "750ml",
                              style: TextStyle(color: Color(0xFFFFFFFF).withOpacity(0.3), fontFamily: "Overpass-Bold", fontSize: 14),
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
                        "4.1",
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
                        'Водка "Белуга" относится к классу элитных алкогольных напитков',
                        style: TextStyle(color: Color(0xFFFFFFFF).withOpacity(0.5), fontFamily: "Overpass-SemiBold", fontSize: 16),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '2090 ₽',
                      style: TextStyle(color: Color(0xFFF7FF88), fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
