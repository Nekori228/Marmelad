import 'dart:convert';

import 'package:enough_mail/enough_mail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marmelad/globals.dart';
import 'package:marmelad/pages/main/profile/orderProfilePage.dart';
import 'package:marmelad/pages/main/profile/orderSuccessfully.dart';

import '../../widgets/appBar/paymentAppBar.dart';
import '../../widgets/bar/bottomNavigationBar.dart';

class PaymentPage extends StatelessWidget {
  PaymentPage({Key? key}) : super(key: key);

  var nameController = TextEditingController();
  var surnameController = TextEditingController();
  var addressController = TextEditingController();
  var addressDController = TextEditingController();
  var addressKController = TextEditingController();
  var addressAController = TextEditingController();
  var numberController = TextEditingController();

  Future<void> sendOrder(context) async {
    final client = SmtpClient('enough.de', isLogEnabled: false);
    try {
      await client.connectToServer('smtp.mail.ru', 465, isSecure: true);
      await client.ehlo();
      if (client.serverInfo.supportsAuth(AuthMechanism.plain)) {
        await client.authenticate('m_marmelad_m@mail.ru', 'dq4HyHiVSJhbWAuQQuVv', AuthMechanism.plain);
      } else if (client.serverInfo.supportsAuth(AuthMechanism.login)) {
        await client.authenticate('m_marmelad_m@mail.ru', 'dq4HyHiVSJhbWAuQQuVv', AuthMechanism.login);
      } else {
        return;
      }

      var message = 'Ваш заказ: <br/>';

      for (var i = 0; i < card.length; i++) {
        message += '${card[i]['name']} в количестве - ${card[i]['count']}<br/>';
      }

      final builder = MessageBuilder.prepareMultipartAlternativeMessage(
        plainText: message.toString(),
        htmlText: message.toString(),
      )
        ..from = [MailAddress('Marmelad', 'm_marmelad_m@mail.ru')]
        ..to = [MailAddress('Recipient Name', 'marmelad.0306@gmail.com')]
        ..subject = 'Заказ №${orders.last['id']}';

      final mimeMessage = builder.buildMimeMessage();
      final sendResponse = await client.sendMessage(mimeMessage);
      print('message sent: ${sendResponse.isOkStatus}');
    } on SmtpException catch (e) {
      print('SMTP failed with $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(100.0), child: PaymentAppBar()),
      backgroundColor: const Color(0xFF000000),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02),
                child: const Text(
                  'Это не займет много \nвремени',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF666666),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Container(
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ИМЯ',
                      style: TextStyle(
                        color: const Color(0xFFFFFFFF).withOpacity(0.4),
                        fontFamily: 'Overpass-Black',
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: nameController,
                      cursorColor: Colors.black,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: 'Иван',
                        hintStyle: TextStyle(fontSize: 14, color: const Color(0xFFFFFFFF).withOpacity(0.4), fontFamily: 'Poppins'),
                        filled: true,
                        fillColor: const Color(0xFFF7FF88).withOpacity(0.2),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'ФАМИЛИЯ',
                      style: TextStyle(
                        color: const Color(0xFFFFFFFF).withOpacity(0.4),
                        fontFamily: 'Overpass-Black',
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: surnameController,
                      cursorColor: Colors.black,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: 'Иванов',
                        hintStyle: TextStyle(fontSize: 14, color: const Color(0xFFFFFFFF).withOpacity(0.4), fontFamily: 'Poppins'),
                        filled: true,
                        fillColor: const Color(0xFFF7FF88).withOpacity(0.2),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'АДРЕС',
                      style: TextStyle(
                        color: const Color(0xFFFFFFFF).withOpacity(0.4),
                        fontFamily: 'Overpass-Black',
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: addressController,
                      cursorColor: Colors.black,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: 'г.Сургут, Энтузистов 48',
                        hintStyle: TextStyle(fontSize: 14, color: const Color(0xFFFFFFFF).withOpacity(0.4), fontFamily: 'Poppins'),
                        filled: true,
                        fillColor: const Color(0xFFF7FF88).withOpacity(0.2),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'ДОМ',
                              style: TextStyle(
                                color: const Color(0xFFFFFFFF).withOpacity(0.4),
                                fontFamily: 'Overpass-Black',
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 40,
                              width: 70,
                              child: TextField(
                                controller: addressDController,
                                textAlign: TextAlign.center,
                                cursorColor: Colors.black,
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: '48',
                                  hintStyle: TextStyle(fontSize: 14, color: const Color(0xFFFFFFFF).withOpacity(0.4), fontFamily: 'Poppins'),
                                  filled: true,
                                  fillColor: const Color(0xFFF7FF88).withOpacity(0.2),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              'КВАРТИРА',
                              style: TextStyle(
                                color: const Color(0xFFFFFFFF).withOpacity(0.4),
                                fontFamily: 'Overpass-Black',
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 40,
                              width: 70,
                              child: TextField(
                                controller: addressKController,
                                textAlign: TextAlign.center,
                                cursorColor: Colors.black,
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: '48',
                                  hintStyle: TextStyle(fontSize: 14, color: const Color(0xFFFFFFFF).withOpacity(0.4), fontFamily: 'Poppins'),
                                  filled: true,
                                  fillColor: const Color(0xFFF7FF88).withOpacity(0.2),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              'ЭТАЖ',
                              style: TextStyle(
                                color: const Color(0xFFFFFFFF).withOpacity(0.4),
                                fontFamily: 'Overpass-Black',
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 40,
                              width: 70,
                              child: TextField(
                                controller: addressAController,
                                textAlign: TextAlign.center,
                                cursorColor: Colors.black,
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: '48',
                                  hintStyle: TextStyle(fontSize: 14, color: const Color(0xFFFFFFFF).withOpacity(0.4), fontFamily: 'Poppins'),
                                  filled: true,
                                  fillColor: const Color(0xFFF7FF88).withOpacity(0.2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'НОМЕР КАРТЫ',
                      style: TextStyle(
                        color: const Color(0xFFFFFFFF).withOpacity(0.4),
                        fontFamily: 'Overpass-Black',
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      cursorColor: Colors.black,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: '4634 1020 4316 8956',
                        hintStyle: TextStyle(fontSize: 14, color: const Color(0xFFFFFFFF).withOpacity(0.4), fontFamily: 'Poppins'),
                        filled: true,
                        fillColor: const Color(0xFFF7FF88).withOpacity(0.2),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'СРОК ДЕЙСТВИЯ',
                              style: TextStyle(
                                color: const Color(0xFFFFFFFF).withOpacity(0.4),
                                fontFamily: 'Overpass-Black',
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 40,
                              width: 110,
                              child: TextField(
                                textAlign: TextAlign.center,
                                cursorColor: Colors.black,
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: '12/2024',
                                  hintStyle: TextStyle(fontSize: 14, color: const Color(0xFFFFFFFF).withOpacity(0.4), fontFamily: 'Poppins'),
                                  filled: true,
                                  fillColor: const Color(0xFFF7FF88).withOpacity(0.2),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              'CVC',
                              style: TextStyle(
                                color: const Color(0xFFFFFFFF).withOpacity(0.4),
                                fontFamily: 'Overpass-Black',
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 40,
                              width: 65,
                              child: TextField(
                                textAlign: TextAlign.center,
                                cursorColor: Colors.black,
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: '***',
                                  hintStyle: TextStyle(fontSize: 14, color: const Color(0xFFFFFFFF).withOpacity(0.4), fontFamily: 'Poppins'),
                                  filled: true,
                                  fillColor: const Color(0xFFF7FF88).withOpacity(0.2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
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
                    const SizedBox(height: 10),
                    Text(
                      'Все платежи проходят через зашифрованный канал SSL, что полностью гарантирует безопасность денежных средств ',
                      style: TextStyle(
                        color: const Color(0xFFFFFFFF).withOpacity(0.4),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/spb_logo.svg"),
                        const SizedBox(width: 25),
                        SvgPicture.asset("assets/images/mir_logo.svg"),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentPage()));
                        },
                        clipBehavior: Clip.antiAlias,
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          padding: EdgeInsets.zero,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            orders.add({
                              'id': orders.length + 1,
                              'orderInfo': card,
                              'name': '${surnameController.text} ${nameController.text}',
                              'address':
                                  '${addressController.text} ${addressDController.text}, ${addressKController.text}кв, ${addressAController.text} этаж'
                            });
                            sendOrder(context).then((value) {
                              card = [];
                              prefs.setString('card', jsonEncode(card));
                              prefs.setString('orders', jsonEncode(orders));
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OrderSuccesfullyPage()));
                            });
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset("assets/images/button.png", fit: BoxFit.cover),
                              const Text(
                                'ОПЛАТИТЬ',
                                style: TextStyle(
                                    letterSpacing: 3.75, fontSize: 24, fontFamily: "Poppins", fontWeight: FontWeight.w600, color: Colors.black),
                              ),
                            ],
                          ),
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
      bottomNavigationBar: ProjectBottomNavBar(),
    );
  }
}
