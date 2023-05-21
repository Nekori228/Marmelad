import 'dart:convert';

import 'package:enough_mail/enough_mail.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/globals.dart';
import 'package:marmelad/pages/main/profile/sentMessageFinishingPage.dart';

import '../../widgets/bar/bottomNavigationBar.dart';
import '../../widgets/bar/finishingBar.dart';

class FinishingTouch extends StatelessWidget {
  final String seat;
  final String selectDate;

  FinishingTouch({Key? key, required this.seat, required this.selectDate})
      : super(key: key);

  Future<void> sendMessage(context) async {
    final client = SmtpClient('enough.de', isLogEnabled: false);
    try {
      await client.connectToServer('smtp.mail.ru', 465, isSecure: true);
      await client.ehlo();
      if (client.serverInfo.supportsAuth(AuthMechanism.plain)) {
        await client.authenticate('m_marmelad_m@mail.ru',
            'dq4HyHiVSJhbWAuQQuVv', AuthMechanism.plain);
      } else if (client.serverInfo.supportsAuth(AuthMechanism.login)) {
        await client.authenticate('m_marmelad_m@mail.ru',
            'dq4HyHiVSJhbWAuQQuVv', AuthMechanism.login);
      } else {
        return;
      }

      var message =
          'Имя: ${nameController.text}<br/>Фамилия: ${surnameController.text}<br/>Номер места: ${seat}<br/>Количество человек: '
          '${humanController.text}';

      final builder = MessageBuilder.prepareMultipartAlternativeMessage(
        plainText: message.toString(),
        htmlText: message.toString(),
      )
        ..from = [MailAddress('Marmelad', 'm_marmelad_m@mail.ru')]
        ..to = [MailAddress('Recipient Name', 'marmelad.0306@gmail.com')]
        ..subject = 'Обратная связь';

      final mimeMessage = builder.buildMimeMessage();
      final sendResponse = await client.sendMessage(mimeMessage);
      print('message sent: ${sendResponse.isOkStatus}');
    } on SmtpException catch (e) {
      print('SMTP failed with $e');
    }
  }

  var nameController = TextEditingController();
  var surnameController = TextEditingController();
  var humanController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: const FinishingBarWidget()),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.044),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 80),
                      const Text(
                        'ИМЯ',
                        style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Overpass-Black"),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: SizedBox(
                          height: 50,
                          child: TextField(
                            controller: nameController,
                            cursorColor: Colors.black,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.fromLTRB(15, 10, 10, 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xFFF7FF88), width: 3.0),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xFFF7FF88), width: 3.0),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              hintText: 'Иван',
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color:
                                      const Color(0xFFFFFFFF).withOpacity(0.4),
                                  fontFamily: 'Poppins'),
                              filled: true,
                              fillColor:
                                  const Color(0xFFF7FF88).withOpacity(0.2),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        'ФАМИЛИЯ',
                        style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Overpass-Black"),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: SizedBox(
                          height: 50,
                          child: TextField(
                            controller: surnameController,
                            cursorColor: Colors.black,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.fromLTRB(15, 10, 10, 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xFFF7FF88), width: 3.0),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xFFF7FF88), width: 3.0),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              hintText: 'Иванов',
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color:
                                      const Color(0xFFFFFFFF).withOpacity(0.4),
                                  fontFamily: 'Poppins'),
                              filled: true,
                              fillColor:
                                  const Color(0xFFF7FF88).withOpacity(0.2),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        'КОЛИЧЕСТВО ПОСЕТИТЕЛЕЙ',
                        style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Overpass-Black"),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: SizedBox(
                          height: 50,
                          child: TextField(
                            controller: humanController,
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.fromLTRB(15, 10, 10, 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xFFF7FF88), width: 3.0),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xFFF7FF88), width: 3.0),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              hintText: '1 человек',
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color:
                                      const Color(0xFFFFFFFF).withOpacity(0.4),
                                  fontFamily: 'Poppins'),
                              filled: true,
                              fillColor:
                                  const Color(0xFFF7FF88).withOpacity(0.2),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    sendMessage(context).then((value) {
                      var booking_object = {
                        'place': this.seat,
                        'count_hum': humanController.text,
                        'date': this.selectDate
                      };
                      booking.add(booking_object);
                      prefs.setString('booking', jsonEncode(booking));
                      prefs.setString(
                          'lastBooking', jsonEncode(booking_object));
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const sentMessageFinishingPage()),
                              (Route<dynamic> route) => false);
                    });
                  },
                  clipBehavior: Clip.antiAlias,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.transparent,
                    padding: EdgeInsets.zero,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/images/button.png",
                          fit: BoxFit.fitWidth),
                      const Text(
                        'ЗАБРОНИРОВАТЬ',
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
              bottom: 0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: ProjectBottomNavBar(),
    );
  }
}
