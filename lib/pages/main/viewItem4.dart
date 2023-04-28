import 'package:dotted_border/dotted_border.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/pages/main/%D1%81artPage.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import '../../globals.dart';
import '../../widgets/appBar/viewItemAppBar.dart';
import '../../widgets/countButton.dart';

class ViewItem4 extends StatefulWidget {
  const ViewItem4({Key? key}) : super(key: key);

  @override
  State<ViewItem4> createState() => _ViewItem4State();
}

var pageController = PageController();

class _ViewItem4State extends State<ViewItem4> {
  var isReview = 0;

  List<Widget> reviewObjects = [];

  get rating => null;

  void setPage(index) {
    selectedPage = index;
    pageController.animateToPage(index,
        duration: Duration(seconds: 1), curve: Curves.ease);
    isReview = 1;
    reviewObjects = [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            'Напишите ваш отзыв',
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: "Overpass-Bold",
                fontSize: 22),
          ),
          SizedBox(
            height: 120,
            child: DottedBorder(
              color: Color(0xFFFFFFFF).withOpacity(0.5),
              strokeWidth: 5,
              dashPattern: [30, 25],
              borderType: BorderType.RRect,
              radius: Radius.circular(14),
              child: TextField(
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                  hintText: 'Все понравилось :3',
                  hintStyle: TextStyle(
                    color: Color(0xFFFFFFFF).withOpacity(0.47),
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
                'Водка "Белуга" относится к классу элитных алкогольных напитков',
                style: TextStyle(
                    color: Color(0xFFFFFFFF).withOpacity(0.47),
                    fontFamily: "Overpass-SemiBold",
                    fontSize: 16),
              ),
            ),
            Column(
              children: [
                Text(
                  '2090 ₽',
                  style: TextStyle(
                      color: Color(0xFFF7FF88),
                      fontFamily: "Overpass-SemiBold",
                      fontSize: 20),
                ),
                SizedBox(height: 10),
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
    ));
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
                  SizedBox(
                      height: 250,
                      child: Center(
                          child: Image.asset('assets/images/item4.png'))),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      Text(
                        'ВИНО АЛЬМА ВЕЛЛИ',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontFamily: "Overpass-Bold",
                            fontSize: 20),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '750ml',
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
                      SizedBox(width: 2),
                      Text(
                        "4.1",
                        style:
                        TextStyle(color: Color(0xFFF7FF88), fontSize: 14),
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
                        style:
                        TextStyle(color: Color(0xFFFF6E6E), fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ExpandablePageView(
                      controller: pageController, children: reviewObjects),
                ],
              )),
            ),
          ),
        ),
        bottomNavigationBar: isReview == 0
            ? Container(
          height: 90,
          color: Colors.black12,
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen()));
            },
            child: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF7FF88),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(16),
                    ),
                    onPressed: () {},
                    child: const Icon(
                      Icons.store,
                      size: 35,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
            : SizedBox());
  }
}
