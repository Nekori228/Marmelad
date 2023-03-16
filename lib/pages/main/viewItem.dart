import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/pages/main/%D1%81artPage.dart';
import '../../globals.dart';
import '../../widgets/appBar/viewItemAppBar.dart';

class ViewItem extends StatefulWidget {
  const ViewItem({Key? key}) : super(key: key);

  @override
  State<ViewItem> createState() => _ViewItemState();
}

var pageController = PageController();

class _ViewItemState extends State<ViewItem> {
  void setPage(index) {
    selectedPage = index;
    pageController.animateToPage(index,
        duration: Duration(seconds: 1), curve: Curves.ease);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ViewItemAppBar(),
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.03),
            child: (Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('assets/images/view_item.png')),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      'Фреш роллы с креветкой',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: "Overpass-Bold",
                          fontSize: 20),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '200гр',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF).withOpacity(0.36),
                          fontFamily: "Overpass-Bold",
                          fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xFFF7FF88),
                      size: 20,
                    ),
                    Text(
                      "4.8",
                      style: TextStyle(color: Color(0xFFF7FF88), fontSize: 14),
                    ),
                    Icon(
                      Icons.local_fire_department,
                      color: Color(0xFFFF6E6E),
                      size: 20,
                    ),
                    Text(
                      "Вкусно",
                      style: TextStyle(color: Color(0xFFFF6E6E), fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                ExpandablePageView(controller: pageController, children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Ролл из рисовой бумаги с креветкой и манго с соусом чили',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(0.47),
                                  fontFamily: "Overpass-SemiBold",
                                  fontSize: 16),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                '300 ₽',
                                style: TextStyle(
                                    color: Color(0xFFF7FF88),
                                    fontFamily: "Overpass-SemiBold",
                                    fontSize: 20),
                              ),
                              SizedBox(height: 10),
                              Image.asset("assets/images/rm.png"),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          print('ss');
                          setPage(1);
                        },
                        child: Text(
                          "Добавить отзыв",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 14,
                              fontFamily: "Overpass-SemiBold",
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFFFFFFF).withOpacity(0.5)),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Описание',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontFamily: "Overpass-Bold",
                            fontSize: 22),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Фреш роллы с креветкой - это классическое азиатское блюдо, которое сочетает в себе хрустящую красоту свежих овощей с сочным вкусом сокрытой креветки. Роллы изготавливаются из мягких, тонких лепешек Показать полностью',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF).withOpacity(0.47),
                            fontFamily: "Overpass-SemiBold",
                            fontSize: 16),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Состав',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontFamily: "Overpass-Bold",
                            fontSize: 22),
                      ),
                      SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "• ",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF).withOpacity(0.47),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Лепешки из рисовой муки',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(0.47),
                                  fontFamily: "Overpass-SemiBold",
                                  fontSize: 14),
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
                              color: Color(0xFFFFFFFF).withOpacity(0.47),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Креветки',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(0.47),
                                  fontFamily: "Overpass-SemiBold",
                                  fontSize: 14),
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
                              color: Color(0xFFFFFFFF).withOpacity(0.47),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Салат',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(0.47),
                                  fontFamily: "Overpass-SemiBold",
                                  fontSize: 14),
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
                              color: Color(0xFFFFFFFF).withOpacity(0.47),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Огурец',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(0.47),
                                  fontFamily: "Overpass-SemiBold",
                                  fontSize: 14),
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
                              color: Color(0xFFFFFFFF).withOpacity(0.47),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Морковь',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(0.47),
                                  fontFamily: "Overpass-SemiBold",
                                  fontSize: 14),
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
                              color: Color(0xFFFFFFFF).withOpacity(0.47),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Авокадо',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(0.47),
                                  fontFamily: "Overpass-SemiBold",
                                  fontSize: 14),
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
                              color: Color(0xFFFFFFFF).withOpacity(0.47),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Приправы и специи по вкусу',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(0.47),
                                  fontFamily: "Overpass-SemiBold",
                                  fontSize: 14),
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
                              color: Color(0xFFFFFFFF).withOpacity(0.47),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Сладко-кислый соус для попробования.',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(0.47),
                                  fontFamily: "Overpass-SemiBold",
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 20,
                        height: 10,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ]),




              ],
            )),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        color: Colors.black12,
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CartScreen()));
          },
          child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.store,
                  color: Theme.of(context).accentColor,
                  size: 60,
                ),
                Text('close'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
