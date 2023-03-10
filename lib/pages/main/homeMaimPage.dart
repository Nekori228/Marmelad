import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../widgets/booking.dart';
import '../../widgets/bar/mainBar.dart';
import '../../widgets/mainItems.dart';

class HomeMainPage extends StatefulWidget {
  const HomeMainPage({Key? key}) : super(key: key);

  @override
  State<HomeMainPage> createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {
  var pageController = PageController();

  void setPage(index) {
    pageController.animateToPage(index,
        duration: Duration(seconds: 1), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HelloWidget(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: ElevatedButton(
                        onPressed: () {
                          setPage(0);
                        },
                        clipBehavior: Clip.antiAlias,
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.zero,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset("assets/images/tabs1_press.svg"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: ElevatedButton(
                        onPressed: () {
                          setPage(1);
                        },
                        clipBehavior: Clip.antiAlias,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFFFFF).withOpacity(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.zero,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset("assets/images/tabs2.svg"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: ElevatedButton(
                        onPressed: () {
                          setPage(2);
                        },
                        clipBehavior: Clip.antiAlias,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFFFFF).withOpacity(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.zero,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset("assets/images/tabs3.svg"),
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setPage(3);
                      },
                      clipBehavior: Clip.antiAlias,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFFFFFF).withOpacity(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset("assets/images/tabs4.svg"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BookingWidget(),
            SizedBox(height: 20),
            ExpandablePageView(controller: pageController, children: [
              Column(
                children: [
                  Item1(),
                  SizedBox(height: 40),
                  Item2(),
                  SizedBox(height: 40),
                  Item1()
                ],
              ),
              Column(
                children: [
                  Item2(),
                  SizedBox(height: 40),
                  Item1(),
                  SizedBox(height: 40),
                  Item1()
                ],
              ),
              Column(
                children: [Item3(), SizedBox(height: 40), Item3()],
              ),
              Column(
                children: [Item4(), SizedBox(height: 40), Item4()],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
