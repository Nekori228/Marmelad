import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/globals.dart';
import 'package:marmelad/pages/main/paymentPage.dart';
import 'package:marmelad/widgets/profilewidgets/basket/basket.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const BasketWidget(),
              const SizedBox(height: 30),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var counter = card[index]['count'];
                      return ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => ViewItem(),
                          //   ),
                          // );
                        },
                        clipBehavior: Clip.antiAlias,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFFFFFF).withOpacity(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.zero,
                        ),
                        child: Row(
                          children: [
                            card[index]['name'] == 'Фреш роллы с креветкой'
                                ? Image.asset("assets/images/item1_basket_favorite.png")
                                : card[index]['name'] == 'Чизкейк'
                                    ? Image.asset("assets/images/item2.png", width: 134)
                                    : card[index]['name'] == 'Водка BELUGA'
                                        ? Image.asset("assets/images/item3.png", width: 134)
                                        : card[index]['name'] == 'Вино АЛЬМА ВЕЛЛИ'
                                            ? Image.asset("assets/images/item4.png", width: 134)
                                            : Container(),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      card[index]['name'],
                                      style: const TextStyle(color: Color(0xFFFFFFFF), fontFamily: "Overpass-Bold", fontSize: 14),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      card[index]['weight'],
                                      style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.4), fontFamily: "Overpass-Bold", fontSize: 14),
                                    ),
                                    SizedBox(
                                      width: 140,
                                      height: 50,
                                      child: Text(
                                        card[index]['description'],
                                        maxLines: 3,
                                        style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.5), fontFamily: "Overpass-Bold", fontSize: 12),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        StatefulBuilder(builder: (context, setStateCount) {
                                          return Container(
                                            height: 35,
                                            decoration: BoxDecoration(color: const Color(0xFFF7FF88), borderRadius: BorderRadius.circular(12)),
                                            child: Row(
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.all(5),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      if (counter - 1 > 0) {
                                                        counter = counter - 1;
                                                        for (var i = 0; i < card.length; i++) {
                                                          if (card[i]['name'] == card[index]['name']) {
                                                            card[i]['count'] = counter;
                                                            prefs.setString('card', jsonEncode(card));
                                                            break;
                                                          }
                                                        }
                                                        setStateCount(() {});
                                                        setStatePriceOrderCallback(() {});
                                                      } else if (counter - 1 == 0) {
                                                        for (var i = 0; i < card.length; i++) {
                                                          if (card[i]['name'] == card[index]['name']) {
                                                            card.removeAt(i);
                                                            prefs.setString('card', jsonEncode(card));
                                                            setState(() {});
                                                            break;
                                                          }
                                                        }
                                                      }
                                                    },
                                                    child: const Icon(
                                                      Icons.remove,
                                                      color: Color(0xFF000000),
                                                      size: 18,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    '${counter}',
                                                    style: const TextStyle(fontSize: 16, color: Color(0xFF000000)),
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.all(5),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      counter += 1;
                                                      for (var i = 0; i < card.length; i++) {
                                                        if (card[i]['name'] == card[index]['name']) {
                                                          card[i]['count'] = counter;
                                                          prefs.setString('card', jsonEncode(card));
                                                          break;
                                                        }
                                                      }
                                                      setStateCount(() {});
                                                      setStatePriceOrderCallback(() {});
                                                    },
                                                    child: const Icon(Icons.add, color: Color(0xFF000000), size: 18),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                        const Spacer(),
                                        Text(
                                          '${card[index]['price']} ₽',
                                          style: const TextStyle(color: Color(0xFFF7FF88), fontSize: 20),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    shrinkWrap: true,
                    itemCount: jsonDecode(prefs.getString('card')) != null ? jsonDecode(prefs.getString('card')).length : 0,
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        height: 30,
                      );
                    },
                  )
                  // Column(
                  //   children: [
                  //     BasketItems1(),
                  //     SizedBox(height: 20),
                  //     BasketItems2(),
                  //   ],
                  // ),
                  ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(0),
                    ),
                    color: const Color(0xFFFFFFFF).withOpacity(0.05)),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.10),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                              'Доставка',
                              style: TextStyle(color: Color(0xFFFFFFFF), fontFamily: "Overpass-Bold", fontSize: 14),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                                print(isSwitched);
                              });
                            },
                            activeTrackColor: const Color(0xFF646464).withOpacity(0.31),
                            activeColor: const Color(0xFFF7FF88),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    StatefulBuilder(builder: (context, setStatePriceOrder) {
                      setStatePriceOrderCallback = setStatePriceOrder;
                      dynamic priceOrder = 0;
                      for (var i = 0; i < jsonDecode(prefs.getString('card')).length; i++) {
                        priceOrder += card[i]['price'] * card[i]['count'];
                      }
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.10),
                        child: Row(
                          children: [
                            const Text(
                              'Итог:',
                              style: TextStyle(color: Color(0xFFFFFFFF), fontFamily: "Overpass-Bold", fontSize: 14),
                            ),
                            const Spacer(),
                            Text(
                              '${priceOrder.toString()} ₽',
                              style: TextStyle(color: Color(0xFFFFFFFF), fontFamily: "Overpass-Bold", fontSize: 14),
                            )
                          ],
                        ),
                      );
                    }),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: ElevatedButton(
                        onPressed: () {
                          if (jsonDecode(prefs.getString('card')).length != 0) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentPage()));
                          }
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
                            Image.asset("assets/images/button.png", fit: BoxFit.cover),
                            const Text(
                              'ЗАКАЗАТЬ',
                              style: TextStyle(
                                  letterSpacing: 3.75, fontSize: 24, fontFamily: "Poppins", fontWeight: FontWeight.w600, color: Colors.black),
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
      ),
    );
  }
}
