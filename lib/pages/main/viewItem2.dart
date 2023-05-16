import 'dart:convert';

import 'package:dotted_border/dotted_border.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/pages/main/viewComments.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import '../../globals.dart';
import '../../widgets/appBar/viewItemAppBar.dart';

import 'package:intl/intl.dart';

class ViewItem2 extends StatefulWidget {
  const ViewItem2({Key? key}) : super(key: key);

  @override
  State<ViewItem2> createState() => _ViewItem2State();
}

var pageController = PageController();

class _ViewItem2State extends State<ViewItem2> {
  var page = 0;
  int counter = 1;

  List<Widget> reviewObjects = [];

  var rating = 0.0;

  void setPage(index) {
    var descriptionController = TextEditingController();
    page = index;
    if (index == 0) {
      reviewObjects = [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text(
              'Напишите ваш отзыв',
              style: TextStyle(color: Color(0xFFFFFFFF), fontFamily: "Overpass-Bold", fontSize: 22),
            ),
            SizedBox(
              height: 120,
              child: DottedBorder(
                color: const Color(0xFFFFFFFF).withOpacity(0.5),
                strokeWidth: 5,
                dashPattern: const [30, 25],
                borderType: BorderType.RRect,
                radius: const Radius.circular(14),
                child: TextField(
                  controller: descriptionController,
                  cursorColor: Colors.black,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
                    hintText: 'Все понравилось :3',
                    hintStyle: TextStyle(
                      color: const Color(0xFFFFFFFF).withOpacity(0.47),
                    ),
                  ),
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: SmoothStarRating(
                  allowHalfRating: false,
                  onRatingChanged: (v) {
                    rating = v;
                  },
                  starCount: 5,
                  rating: rating,
                  size: 60.0,
                  color: const Color(0xFFF7FF88),
                  borderColor: const Color(0xFFF7FF88),
                  spacing: 0.0),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  if (jsonDecode(prefs.getString('card')).length != 0) {}
                },
                clipBehavior: Clip.antiAlias,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.zero,
                ),
                child: GestureDetector(
                  onTap: () {
                    if (comments.keys.toList().contains('Чизкейк') == false) {
                      comments['Чизкейк'] = [];
                    }
                    comments['Чизкейк'].add({'name': 'Евгения Сергеева', 'comments': descriptionController.text, 'rating': rating,
                      'date': DateFormat('dd.MM.yyyy').format(DateTime.now())});
                    prefs.setString('comments', jsonEncode(comments));
                    setPage(1);
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/images/button.png", fit: BoxFit.cover),
                      const Text(
                        'ОТПРАВИТЬ',
                        style: TextStyle(letterSpacing: 3.75, fontSize: 24, fontFamily: "Poppins", fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ];
    }
    if (index == 1) {
      reviewObjects = [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Классическое блюдо американской кухни',
                    style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 16),
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      '200 ₽',
                      style: TextStyle(color: Color(0xFFF7FF88), fontFamily: "Overpass-SemiBold", fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    StatefulBuilder(builder: (context, setStateCount) {
                      return Container(
                        height: 35,
                        decoration: BoxDecoration(color: const Color(0xFFF7FF88), borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              child: GestureDetector(
                                onTap: () => setState(() {
                                  if (counter - 1 > 0) {
                                    counter = counter - 1;
                                    setStateCount(() {});
                                  }
                                }),
                                child: const Icon(
                                  Icons.remove,
                                  color: Color(0xFF000000),
                                  size: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '${counter}',
                                style: const TextStyle(fontSize: 16, color: Color(0xFF000000)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(5),
                              child: GestureDetector(
                                onTap: () => setState(() {
                                  counter += 1;
                                  setStateCount(() {});
                                }),
                                child: const Icon(Icons.add, color: Color(0xFF000000), size: 18),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ViewComment(nameObject: 'Чизкейк'),
                  ),
                );
              },
              child: Text(
                "Просмотреть отзывы",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                    fontFamily: "Overpass-SemiBold",
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFFFFFFFF).withOpacity(0.5)),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                setPage(0);
              },
              child: Text(
                "Добавить отзыв",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                    fontFamily: "Overpass-SemiBold",
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFFFFFFFF).withOpacity(0.5)),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Описание',
              style: TextStyle(color: Color(0xFFFFFFFF), fontFamily: "Overpass-Bold", fontSize: 22),
            ),
            const SizedBox(height: 10),
            Text(
              'Фреш роллы с креветкой - это классическое азиатское блюдо, которое сочетает в себе хрустящую красоту свежих овощей с сочным вкусом сокрытой креветки. Роллы изготавливаются из мягких, тонких лепешек Показать полностью',
              style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 16),
            ),
            const SizedBox(height: 30),
            const Text(
              'Состав',
              style: TextStyle(color: Color(0xFFFFFFFF), fontFamily: "Overpass-Bold", fontSize: 22),
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "• ",
                  style: TextStyle(
                    color: const Color(0xFFFFFFFF).withOpacity(0.47),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Лепешки из рисовой муки',
                    style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 14),
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
                    color: const Color(0xFFFFFFFF).withOpacity(0.47),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Креветки',
                    style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 14),
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
                    color: const Color(0xFFFFFFFF).withOpacity(0.47),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Салат',
                    style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 14),
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
                    color: const Color(0xFFFFFFFF).withOpacity(0.47),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Огурец',
                    style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 14),
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
                    color: const Color(0xFFFFFFFF).withOpacity(0.47),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Морковь',
                    style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 14),
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
                    color: const Color(0xFFFFFFFF).withOpacity(0.47),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Авокадо',
                    style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 14),
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
                    color: const Color(0xFFFFFFFF).withOpacity(0.47),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Приправы и специи по вкусу',
                    style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 14),
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
                    color: const Color(0xFFFFFFFF).withOpacity(0.47),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Сладко-кислый соус для попробования.',
                    style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 14),
                  ),
                ),
              ],
            ),
          ],
        )
      ];
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    reviewObjects.add(Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Классическое блюдо американской кухни',
                style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 16),
              ),
            ),
            Column(
              children: [
                const Text(
                  '200 ₽',
                  style: TextStyle(color: Color(0xFFF7FF88), fontFamily: "Overpass-SemiBold", fontSize: 20),
                ),
                const SizedBox(height: 10),
                StatefulBuilder(builder: (context, setStateCount) {
                  return Container(
                    height: 35,
                    decoration: BoxDecoration(color: const Color(0xFFF7FF88), borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: GestureDetector(
                            onTap: () => setState(() {
                              if (counter - 1 > 0) {
                                counter = counter - 1;
                                setStateCount(() {});
                              }
                            }),
                            child: const Icon(
                              Icons.remove,
                              color: Color(0xFF000000),
                              size: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '${counter}',
                            style: const TextStyle(fontSize: 16, color: Color(0xFF000000)),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: GestureDetector(
                            onTap: () => setState(() {
                              counter += 1;
                              setStateCount(() {});
                            }),
                            child: const Icon(Icons.add, color: Color(0xFF000000), size: 18),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ViewComment(nameObject: 'Чизкейк',),
              ),
            );
          },
          child: Text(
            "Просмотреть отзывы",
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 14,
                fontFamily: "Overpass-SemiBold",
                fontWeight: FontWeight.w600,
                color: const Color(0xFFFFFFFF).withOpacity(0.5)),
          ),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            setPage(0);
          },
          child: Text(
            "Добавить отзыв",
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 14,
                fontFamily: "Overpass-SemiBold",
                fontWeight: FontWeight.w600,
                color: const Color(0xFFFFFFFF).withOpacity(0.5)),
          ),
        ),
        const SizedBox(height: 30),
        const Text(
          'Описание',
          style: TextStyle(color: Color(0xFFFFFFFF), fontFamily: "Overpass-Bold", fontSize: 22),
        ),
        const SizedBox(height: 10),
        Text(
          'Фреш роллы с креветкой - это классическое азиатское блюдо, которое сочетает в себе хрустящую красоту свежих овощей с сочным вкусом сокрытой креветки. Роллы изготавливаются из мягких, тонких лепешек Показать полностью',
          style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 16),
        ),
        const SizedBox(height: 30),
        const Text(
          'Состав',
          style: TextStyle(color: Color(0xFFFFFFFF), fontFamily: "Overpass-Bold", fontSize: 22),
        ),
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "• ",
              style: TextStyle(
                color: const Color(0xFFFFFFFF).withOpacity(0.47),
              ),
            ),
            Expanded(
              child: Text(
                'Лепешки из рисовой муки',
                style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 14),
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
                color: const Color(0xFFFFFFFF).withOpacity(0.47),
              ),
            ),
            Expanded(
              child: Text(
                'Креветки',
                style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 14),
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
                color: const Color(0xFFFFFFFF).withOpacity(0.47),
              ),
            ),
            Expanded(
              child: Text(
                'Салат',
                style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 14),
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
                color: const Color(0xFFFFFFFF).withOpacity(0.47),
              ),
            ),
            Expanded(
              child: Text(
                'Огурец',
                style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 14),
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
                color: const Color(0xFFFFFFFF).withOpacity(0.47),
              ),
            ),
            Expanded(
              child: Text(
                'Морковь',
                style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 14),
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
                color: const Color(0xFFFFFFFF).withOpacity(0.47),
              ),
            ),
            Expanded(
              child: Text(
                'Авокадо',
                style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 14),
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
                color: const Color(0xFFFFFFFF).withOpacity(0.47),
              ),
            ),
            Expanded(
              child: Text(
                'Приправы и специи по вкусу',
                style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 14),
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
                color: const Color(0xFFFFFFFF).withOpacity(0.47),
              ),
            ),
            Expanded(
              child: Text(
                'Сладко-кислый соус для попробования.',
                style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 14),
              ),
            ),
          ],
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ViewItemAppBar(),
        backgroundColor: const Color(0xFF000000),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
              child: (Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 250, child: Center(child: Image.asset('assets/images/item2.png'))),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      const Text(
                        'Чизкейк',
                        style: TextStyle(color: Color(0xFFFFFFFF), fontFamily: "Overpass-Bold", fontSize: 20),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '200гр',
                        style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.36), fontFamily: "Overpass-Bold", fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Color(0xFFF7FF88),
                        size: 20,
                      ),
                      SizedBox(width: 2),
                      Text(
                        "4.8",
                        style: TextStyle(color: Color(0xFFF7FF88), fontSize: 14),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.local_fire_department,
                        color: Color(0xFFFF6E6E),
                        size: 20,
                      ),
                      SizedBox(width: 2),
                      Text(
                        "Вкусно",
                        style: TextStyle(color: Color(0xFFFF6E6E), fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ExpandablePageView(controller: pageController, children: reviewObjects),
                ],
              )),
            ),
          ),
        ),
        bottomNavigationBar: card.firstWhere((element) => element['name'] == 'Чизкейк', orElse: () {
                  return null;
                }) ==
                null
            ? Container(
                height: 90,
                color: Colors.black12,
                child: InkWell(
                  onTap: () {
                    card.firstWhere((element) => element['name'] == 'Чизкейк', orElse: () {
                      card.add({
                        'name': 'Чизкейк',
                        'description':
                            'Фреш роллы с креветкой - это классическое азиатское блюдо, которое сочетает в себе хрустящую красоту свежих овощей с сочным вкусом сокрытой креветки. Роллы изготавливаются из мягких, тонких лепешек',
                        'weight': '200 гр',
                        'count': counter,
                        'price': 200
                      });
                    });
                    prefs.setString('card', jsonEncode(card));
                    print(card);
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: <Widget>[
                        Expanded(child: Image.asset('assets/images/buy.png')),
                      ],
                    ),
                  ),
                ),
              )
            : const SizedBox());
  }
}
