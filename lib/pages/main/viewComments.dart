import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/appBar/viewItemAppBar.dart';

class ViewComment extends StatelessWidget {
  const ViewComment({Key? key}) : super(key: key);

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ФРЕШ РОЛЛЫ С КРЕВЕТКОЙ',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontFamily: "Overpass-Bold",
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '200гр',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF).withOpacity(0.36),
                          fontFamily: "Overpass-Bold",
                          fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                SizedBox(
                  height: 250,
                  child: Center(
                    child: Image.asset('assets/images/view_item.png'),
                  ),
                ),
                SizedBox(height: 20),
                PersonComments(),
                SizedBox(height: 20),
                PersonComments(),
                SizedBox(height: 20),
                PersonComments(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PersonComments extends StatelessWidget {
  const PersonComments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.account_circle, color: Colors.white, size: 40),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ЕВГЕНИЯ СЕРГЕЕВА',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Overpass-Bold",
                        fontSize: 15),
                  ),
                  SizedBox(height: 2),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 15),
                      Icon(Icons.star, color: Colors.yellow, size: 15),
                      Icon(Icons.star, color: Colors.yellow, size: 15),
                      Icon(Icons.star, color: Colors.yellow, size: 15),
                      Icon(Icons.star_border, color: Colors.yellow, size: 15),
                      SizedBox(width: 5),
                      Text(
                        '9 сентября 2022',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.47),
                            fontFamily: "Overpass-SemiBold",
                            fontSize: 14),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Ролл из рисовой бумаги с креветкой и манго с соусом чили',
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Overpass-SemiBold",
                fontSize: 14),
          ),
        ],
      ),
    );
  }
}
