import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/pages/main/paymentPage.dart';
import '../../widgets/profilewidgets/basket/basket.dart';
import '../../widgets/profilewidgets/basket/basketItems.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: Column(
          children: [
            BasketWidget(),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: Column(
                children: [
                  BasketItems1(),
                  SizedBox(height: 20),
                  BasketItems2(),
                ],
              ),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(0),
                  ), color: Color(0xFFFFFFFF).withOpacity(0.05)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Text(
                            'Доставка',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: "Overpass-Bold",
                                fontSize: 14),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.10),
                    child: Row(
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
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PaymentPage()));
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
