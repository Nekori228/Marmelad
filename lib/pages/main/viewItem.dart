import 'dart:convert';

import 'package:dotted_border/dotted_border.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:collection/collection.dart'; // You have to add this manually, for some reason it cannot be added automatically
import 'package:flutter/material.dart';
import 'package:marmelad/pages/main/%D1%81artPage.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import '../../globals.dart';
import '../../widgets/appBar/viewItemAppBar.dart';
import '../../widgets/countButton.dart';

class ViewItem extends StatefulWidget {
  const ViewItem({Key? key}) : super(key: key);

  @override
  State<ViewItem> createState() => _ViewItemState();
}

var pageController = PageController();

class _ViewItemState extends State<ViewItem> {
  var isReview = 0;

  List<Widget> reviewObjects = [];

  get rating => null;

  void setPage(index) {
    selectedPage = index;
    pageController.animateToPage(index, duration: const Duration(seconds: 1), curve: Curves.ease);
    isReview = 1;
    reviewObjects = [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          // SmoothStarRating(
          //     allowHalfRating: false,
          //     onRated: (v) {
          //     },
          //     starCount: 5,
          //     rating: rating,
          //     size: 40.0,
          //     isReadOnly:true,
          //     filledIconData: Icons.blur_off,
          //     halfFilledIconData: Icons.blur_on,
          //     color: Colors.green,
          //     borderColor: Colors.green,
          //     spacing:0.0
          // )
        ],
      ),
    ];
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
                'Ролл из рисовой бумаги с креветкой и манго с соусом чили',
                style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.47), fontFamily: "Overpass-SemiBold", fontSize: 16),
              ),
            ),
            Column(
              children: [
                const Text(
                  '300 ₽',
                  style: TextStyle(color: Color(0xFFF7FF88), fontFamily: "Overpass-SemiBold", fontSize: 20),
                ),
                const SizedBox(height: 10),
                CountButton(),
              ],
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            isReview = 1;
            setPage(1);
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
                  Center(child: Image.asset('assets/images/view_item.png')),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      const Text(
                        'Фреш роллы с креветкой',
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
                  const SizedBox(height: 10),
                  ExpandablePageView(controller: pageController, children: reviewObjects),
                ],
              )),
            ),
          ),
        ),
        bottomNavigationBar: card.firstWhere((element) => element['name'] == 'Фреш роллы с креветкой', orElse: () {
                  return null;
                }) ==
                null
            ? Container(
                height: 90,
                color: Colors.black12,
                child: InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => const CartScreen()));
                    var result = card.firstWhere((element) => element['name'] == 'Фреш роллы с креветкой', orElse: () {
                      card.add({
                        'name': 'Фреш роллы с '
                            'креветкой',
                        'count': 1,
                        'price': 300
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
