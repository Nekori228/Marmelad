import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../pages/main/homeMaimPage.dart';

class TabsWidget extends StatelessWidget {
  const TabsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeMainPage()));
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
                onPressed: () {},
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
                onPressed: () {},
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
              onPressed: () {},
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
    );
  }
}
