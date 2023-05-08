import 'package:enough_mail/enough_mail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/pages/main/profile/sentMessageFeedbackPage.dart';

import '../../../widgets/bar/bottomNavigationBar.dart';
import '../../../widgets/bar/feedbackBar.dart';

class FeedbackPage extends StatelessWidget {
  Future<void> sendMessage(context) async {
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

      var message = 'Имя: ${nameController.text}<br/>Фамилия: ${surnameController.text}<br/>mail: ${addressController.text}<br/>Сообщение: '
          '${messageController.text}';

      final builder = MessageBuilder.prepareMultipartAlternativeMessage(
        plainText: message.toString(),
        htmlText: message.toString(),
      )
        ..from = [MailAddress('Marmelad', 'm_marmelad_m@mail.ru')]
        ..to = [MailAddress('Recipient Name', 'kalichak_eo@mail.ru')]
        ..subject = 'Обратная связь';

      final mimeMessage = builder.buildMimeMessage();
      final sendResponse = await client.sendMessage(mimeMessage);
      print('message sent: ${sendResponse.isOkStatus}');
    } on SmtpException catch (e) {
      print('SMTP failed with $e');
    }
  }

  FeedbackPage({Key? key}) : super(key: key);

  var nameController = TextEditingController();
  var surnameController = TextEditingController();
  var addressController = TextEditingController();
  var messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.044),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FeedbackBarWidget(),
                SizedBox(height: 20,),
                const Text(
                  'ИМЯ',
                  style: TextStyle(color: Color(0xFF666666), fontSize: 12, fontWeight: FontWeight.bold, fontFamily: "Overpass-Black"),
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
                  ),
                ),
                const Text(
                  'ФАМИЛИЯ',
                  style: TextStyle(color: Color(0xFF666666), fontSize: 12, fontWeight: FontWeight.bold, fontFamily: "Overpass-Black"),
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
                  ),
                ),
                const Text(
                  'АДРЕС ЭЛЕКТРОННОЙ ПОЧТЫ',
                  style: TextStyle(color: Color(0xFF666666), fontSize: 12, fontWeight: FontWeight.bold, fontFamily: "Overpass-Black"),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: SizedBox(
                    height: 50,
                    child: TextField(
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
                        hintText: 'danil.superdesign@gmail.com',
                        hintStyle: TextStyle(fontSize: 14, color: const Color(0xFFFFFFFF).withOpacity(0.4), fontFamily: 'Poppins'),
                        filled: true,
                        fillColor: const Color(0xFFF7FF88).withOpacity(0.2),
                      ),
                    ),
                  ),
                ),
                const Text(
                  'СООБЩЕНИЕ',
                  style: TextStyle(color: Color(0xFF666666), fontSize: 12, fontWeight: FontWeight.bold, fontFamily: "Overpass-Black"),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: TextField(
                    controller: messageController,
                    cursorColor: Colors.black,
                    style: const TextStyle(color: Colors.white),
                    maxLines: 10000,
                    minLines: 7,
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
                      hintText: 'Классное заведение и приложение тоже очень понравилось',
                      hintStyle: TextStyle(fontSize: 14, color: const Color(0xFFFFFFFF).withOpacity(0.4), fontFamily: 'Poppins'),
                      filled: true,
                      fillColor: const Color(0xFFF7FF88).withOpacity(0.2),
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      sendMessage(context).then((value) {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const sentMessageFeedbackPage()));
                      });
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
                          'ОТПРАВИТЬ',
                          style:
                              TextStyle(letterSpacing: 3.75, fontSize: 24, fontFamily: "Poppins", fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ProjectBottomNavBar(),
    );
  }
}
