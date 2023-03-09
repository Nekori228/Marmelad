import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/basket.dart';
import '../widgets/basketItems.dart';
import '../widgets/booking.dart';
import '../widgets/hello.dart';
import '../widgets/items.dart';
import '../widgets/tabs.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BasketWidget(),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03),
                child: Column(
                  children: [
                    BasketItems1(),
                    BasketItems2(),
                    Row(
                      children: [
                        Text(
                          'Доставка',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontFamily: "Overpass-Bold",
                              fontSize: 14),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Итог:',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontFamily: "Overpass-Bold",
                              fontSize: 14),
                        ),
                        Spacer(),
                        Text(
                          '1200 ₽',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontFamily: "Overpass-Bold",
                              fontSize: 14),
                        )
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Main()));
                      },
                      clipBehavior: Clip.antiAlias,
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset("assets/images/button.png",
                              fit: BoxFit.cover),
                          Text(
                            'ЗАКАЗАТЬ',
                            style: TextStyle(
                                letterSpacing: 3.75,
                                fontSize: 24,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
