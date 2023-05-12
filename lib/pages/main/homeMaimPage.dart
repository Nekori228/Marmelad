import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marmelad/globals.dart';
import '../../widgets/bar/bottomNavigationBar.dart';
import '../../widgets/booking.dart';
import '../../widgets/bar/mainBar.dart';
import '../../widgets/mainItems.dart';

class HomeMainPage extends StatefulWidget {
  const HomeMainPage({Key? key}) : super(key: key);

  @override
  State<HomeMainPage> createState() => _HomeMainPageState();
}

Future<bool> _onWillPop() async {
  return false; //<-- SEE HERE
}

class _HomeMainPageState extends State<HomeMainPage> {
  var statePreviousCallback;
  var pageController = PageController();

  void setPage(index) {
    selectedMenuItem = index;
    pageController.animateToPage(index, duration: Duration(seconds: 1), curve: Curves.ease);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    statePreviousCallback = setState;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
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
                              backgroundColor: Color(0xFFFFFFFF).withOpacity(0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.zero,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                selectedMenuItem == 0
                                    ? SvgPicture.asset("assets/images/tabs1_press.svg")
                                    : SvgPicture.asset("assets/images/tabs1.svg"),
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
                                selectedMenuItem == 1
                                    ? SvgPicture.asset("assets/images/tabs2_press.svg")
                                    : SvgPicture.asset("assets/images/tabs2.svg"),
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
                                selectedMenuItem == 2
                                    ? SvgPicture.asset("assets/images/tabs3_press.svg")
                                    : SvgPicture.asset("assets/images/tabs3.svg"),
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
                              selectedMenuItem == 3 ? SvgPicture.asset("assets/images/tabs4_press.svg") : SvgPicture.asset("assets/images/tabs4.svg"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                prefs.getString('lastBooking') != null
                    ? BookingWidget(
                        statePreviousCallback: statePreviousCallback,
                      )
                    : Container(),
                SizedBox(height: 20),
                ExpandablePageView(controller: pageController, children: [
                  Column(
                    children: [Item1(), SizedBox(height: 40), Item2()],
                  ),
                  Column(
                    children: [
                      Item2(),
                    ],
                  ),
                  Column(
                    children: [Item3()],
                  ),
                  Column(
                    children: [Item4()],
                  ),
                ]),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ProjectBottomNavBar(),
      ),
    );
  }
}
