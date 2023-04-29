import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteOrderItems2 extends StatelessWidget {
  const FavoriteOrderItems2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03),
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
        child: Row(
          children: [
            Image.asset("assets/images/item2_basket_favorite.png"),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ФРЕШ РОЛЛЫ С КРЕВЕТКОЙ',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: "Overpass-Bold",
                          fontSize: 14),
                    ),
                    Text(
                      '200гр',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF).withOpacity(0.4),
                          fontFamily: "Overpass-Bold",
                          fontSize: 14),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: SizedBox(
                        width: 140,
                        height: 50,
                        child: Text(
                          'Ролл из рисовой бумаги с креветкой и манго с соусом чили',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF).withOpacity(0.5),
                              fontFamily: "Overpass-Bold",
                              fontSize: 12),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Color(0xFFF7FF88),
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              '2',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xFF000000)),
                            ),
                          ),
                        ),
                        Spacer(),
                        Text(
                          '600 ₽',
                          style:
                              TextStyle(color: Color(0xFFF7FF88), fontSize: 20),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
