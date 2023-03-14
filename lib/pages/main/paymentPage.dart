import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/appBar/paymentAppBar.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0), child: PaymentAppBar()),
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.02),
                child: Text(
                  'Это не займет много \nвремени',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF666666),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ИМЯ',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(0.4),
                        fontFamily: 'Overpass-Black',
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      cursorColor: Colors.black,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: 'Иван',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFFFFFFF).withOpacity(0.4),
                            fontFamily: 'Poppins'),
                        filled: true,
                        fillColor: Color(0xFFF7FF88).withOpacity(0.2),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'ФАМИЛИЯ',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(0.4),
                        fontFamily: 'Overpass-Black',
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      cursorColor: Colors.black,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: 'Иванов',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFFFFFFF).withOpacity(0.4),
                            fontFamily: 'Poppins'),
                        filled: true,
                        fillColor: Color(0xFFF7FF88).withOpacity(0.2),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'АДРЕС',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(0.4),
                        fontFamily: 'Overpass-Black',
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      cursorColor: Colors.black,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: 'г.Сургут, Энтузистов 48',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFFFFFFF).withOpacity(0.4),
                            fontFamily: 'Poppins'),
                        filled: true,
                        fillColor: Color(0xFFF7FF88).withOpacity(0.2),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'ДОМ',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(0.4),
                                fontFamily: 'Overpass-Black',
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              height: 40,
                              width: 70,
                              child: TextField(
                                textAlign: TextAlign.center,
                                cursorColor: Colors.black,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: '48',
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFFFFFFFF).withOpacity(0.4),
                                      fontFamily: 'Poppins'),
                                  filled: true,
                                  fillColor: Color(0xFFF7FF88).withOpacity(0.2),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              'КВАРТИРА',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(0.4),
                                fontFamily: 'Overpass-Black',
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              height: 40,
                              width: 70,
                              child: TextField(
                                textAlign: TextAlign.center,
                                cursorColor: Colors.black,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: '48',
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFFFFFFFF).withOpacity(0.4),
                                      fontFamily: 'Poppins'),
                                  filled: true,
                                  fillColor: Color(0xFFF7FF88).withOpacity(0.2),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              'ЭТАЖ',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(0.4),
                                fontFamily: 'Overpass-Black',
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              height: 40,
                              width: 70,
                              child: TextField(
                                textAlign: TextAlign.center,
                                cursorColor: Colors.black,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: '48',
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFFFFFFFF).withOpacity(0.4),
                                      fontFamily: 'Poppins'),
                                  filled: true,
                                  fillColor: Color(0xFFF7FF88).withOpacity(0.2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'НОМЕР КАРТЫ',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(0.4),
                        fontFamily: 'Overpass-Black',
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      cursorColor: Colors.black,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: '4634 1020 4316 8956',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFFFFFFF).withOpacity(0.4),
                            fontFamily: 'Poppins'),
                        filled: true,
                        fillColor: Color(0xFFF7FF88).withOpacity(0.2),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'СРОК ДЕЙСТВИЯ',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(0.4),
                                fontFamily: 'Overpass-Black',
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              height: 40,
                              width: 110,
                              child: TextField(
                                textAlign: TextAlign.center,
                                cursorColor: Colors.black,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: '12/2024',
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFFFFFFFF).withOpacity(0.4),
                                      fontFamily: 'Poppins'),
                                  filled: true,
                                  fillColor: Color(0xFFF7FF88).withOpacity(0.2),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              'CVC',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(0.4),
                                fontFamily: 'Overpass-Black',
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              height: 40,
                              width: 65,
                              child: TextField(
                                textAlign: TextAlign.center,
                                cursorColor: Colors.black,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: '***',
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFFFFFFFF).withOpacity(0.4),
                                      fontFamily: 'Poppins'),
                                  filled: true,
                                  fillColor: Color(0xFFF7FF88).withOpacity(0.2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'Cохранить данные карты',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontFamily: 'Overpass-SemiBold',
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Все платежи проходят через зашифрованный канал SSL, что полностью гарантирует безопасность денежных средств ',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(0.4),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/spb_logo.svg"),
                        SizedBox(width: 25),
                        SvgPicture.asset("assets/images/mir_logo.svg"),
                      ],
                    ),
                    SizedBox(height: 20),
                    Center(
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
                              'ОПЛАТИТЬ',
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
      ),
    );
  }
}
