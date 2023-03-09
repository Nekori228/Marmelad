import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/appBar/orderAppBar.dart';

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
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
