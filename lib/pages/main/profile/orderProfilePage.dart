import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/globals.dart';
import 'package:marmelad/pages/main/profile/order912ProfilePage.dart';
import '../../../widgets/appBar/orderAppBar.dart';
import '../../../widgets/bar/bottomNavigationBar.dart';
import '../../../widgets/profilewidgets/order/orderItems.dart';

class OrderProfilePage extends StatefulWidget {
  const OrderProfilePage({Key? key}) : super(key: key);

  @override
  State<OrderProfilePage> createState() => _OrderProfilePageState();
}

class _OrderProfilePageState extends State<OrderProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      appBar: OrderAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ListView.separated(
                  itemBuilder: (context, index) {
                    var objects = [];
                    var price = 0;
                    for (var i = 0; i < orders[index]['orderInfo'].length; i++) {
                      objects.add(orders[index]['orderInfo'][i]['name']);
                      price +=
                          int.parse(orders[index]['orderInfo'][i]['price'].toString()) * int.parse(orders[index]['orderInfo'][i]['count'].toString());
                    }
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => Order912ProfilePage()));
                        },
                        clipBehavior: Clip.antiAlias,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF0D0D0D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.zero,
                        ),
                        child: Row(
                          children: [
                            Container(margin: EdgeInsets.all(10), child: Image.asset("assets/images/item1_order.png")),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'ЗАКАЗ ${orders[index]['id']}',
                                      style: TextStyle(color: Color(0xFFFFFFFF), fontFamily: "Overpass-Bold", fontSize: 14),
                                    ),
                                    Text(
                                      'Статус: готовится',
                                      style: TextStyle(color: Color(0xFFF7FF88), fontFamily: "Overpass-Bold", fontSize: 12),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            width: 120,
                                            child: ListView.builder(
                                                itemBuilder: (context, count) {
                                                  return Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text(
                                                        "• ",
                                                        style: TextStyle(
                                                            color: Color(0xFFFFFFFF).withOpacity(0.47),
                                                            fontWeight: FontWeight.w400,
                                                            fontSize: 16,
                                                            fontFamily: 'Inter'),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          objects[count],
                                                          style: TextStyle(
                                                              color: Color(0xFFFFFFFF).withOpacity(0.47),
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 16,
                                                              fontFamily: 'Inter'),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                                shrinkWrap: true,
                                                physics: NeverScrollableScrollPhysics(),
                                                itemCount: objects.length),
                                            // child: Column(
                                            //   children: [
                                            //     Row(
                                            //       crossAxisAlignment: CrossAxisAlignment.start,
                                            //       children: <Widget>[
                                            //         Text(
                                            //           "• ",
                                            //           style: TextStyle(
                                            //               color: Color(0xFFFFFFFF).withOpacity(0.47),
                                            //               fontWeight: FontWeight.w400,
                                            //               fontSize: 16,
                                            //               fontFamily: 'Inter'),
                                            //         ),
                                            //         Expanded(
                                            //           child: Text(
                                            //             'Фреш ролл с креветкой',
                                            //             style: TextStyle(
                                            //                 color: Color(0xFFFFFFFF).withOpacity(0.47),
                                            //                 fontWeight: FontWeight.w400,
                                            //                 fontSize: 16,
                                            //                 fontFamily: 'Inter'),
                                            //           ),
                                            //         ),
                                            //       ],
                                            //     ),
                                            //     Row(
                                            //       crossAxisAlignment: CrossAxisAlignment.start,
                                            //       children: <Widget>[
                                            //         Text(
                                            //           "• ",
                                            //           style: TextStyle(
                                            //               color: Color(0xFFFFFFFF).withOpacity(0.47),
                                            //               fontWeight: FontWeight.w400,
                                            //               fontSize: 16,
                                            //               fontFamily: 'Inter'),
                                            //         ),
                                            //         Expanded(
                                            //           child: Text(
                                            //             'Чизкейк',
                                            //             style: TextStyle(
                                            //                 color: Color(0xFFFFFFFF).withOpacity(0.47),
                                            //                 fontWeight: FontWeight.w400,
                                            //                 fontSize: 16,
                                            //                 fontFamily: 'Inter'),
                                            //           ),
                                            //         ),
                                            //       ],
                                            //     ),
                                            //   ],
                                            // ),
                                          ),
                                          Spacer(),
                                          Text(
                                            '${price} ₽',
                                            style: TextStyle(color: Color(0xFFF7FF88), fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 30),
                  itemCount: orders.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ProjectBottomNavBar(),
    );
  }
}
