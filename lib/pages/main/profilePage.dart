import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/pages/main/profile/bookingHistory.dart';
import 'package:marmelad/pages/main/profile/favoritesProfilePage.dart';
import 'package:marmelad/pages/main/profile/feedbackProfile.dart';
import 'package:marmelad/pages/main/profile/orderProfilePage.dart';
import 'package:marmelad/pages/main/profile/questionsProfilePage.dart';

import '../../widgets/bar/profileBar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF000000),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfileWidget(),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 130, 0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OrderProfilePage()));
                        },
                        clipBehavior: Clip.antiAlias,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFD9D9D9).withOpacity(0.1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          // padding: EdgeInsets.zero,
                        ),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                            child: Text(
                              '????????????',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Overpass-Bold",
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FavoritesProfilePage(),
                            ),
                          );
                        },
                        clipBehavior: Clip.antiAlias,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFD9D9D9).withOpacity(0.1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          // padding: EdgeInsets.zero,
                        ),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                            child: Text(
                              '??????????????????',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Overpass-Bold",
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => bookingHistory()));
                        },
                        clipBehavior: Clip.antiAlias,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFD9D9D9).withOpacity(0.1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          // padding: EdgeInsets.zero,
                        ),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                            child: Text(
                              '?????????????? ????????????????????????',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Overpass-Bold",
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => questionsProfilePage(),
                            ),
                          );
                        },
                        clipBehavior: Clip.antiAlias,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFD9D9D9).withOpacity(0.1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          // padding: EdgeInsets.zero,
                        ),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                            child: Text(
                              '?????????? ???????????????????? ??????????????',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Overpass-Bold",
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FeedbackPage(),
                            ),
                          );
                        },
                        clipBehavior: Clip.antiAlias,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFD9D9D9).withOpacity(0.1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          // padding: EdgeInsets.zero,
                        ),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                            child: Text(
                              '???????????????? ??????????',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Overpass-Bold",
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.2),
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    clipBehavior: Clip.antiAlias,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFD9D9D9).withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      // padding: EdgeInsets.zero,
                    ),
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                        child: Text(
                          '?????????? ???? ????????????????',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Overpass-Bold",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text(
                  '???????????????? ??????????????????????????????????',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 12,
                    fontFamily: "Overpass-Bold",
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFFFFFF).withOpacity(0.5),
                  ),
                ),
              ),
              Text(
                '?? ????????????????????',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 12,
                  fontFamily: "Overpass-Bold",
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF).withOpacity(0.5),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
