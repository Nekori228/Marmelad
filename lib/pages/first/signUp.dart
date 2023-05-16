import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marmelad/widgets/theme.dart';
import '../../globals.dart';
import '../../services/snack_bar.dart';
import '../../widgets/appBar/bookingHelpAppBar.dart';
import '../main/mainPage.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignUpPage();
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isHiddenPassword = true;
  TextEditingController emailTextInputController = TextEditingController();
  TextEditingController passwordTextInputController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailTextInputController.dispose();
    passwordTextInputController.dispose();

    super.dispose();
  }

  void togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  Future<void> login() async {
    final navigator = Navigator.of(context);

    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailTextInputController.text.trim(),
        password: passwordTextInputController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e.code);

      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        SnackBarService.showSnackBar(
          context,
          'Неправильный email или пароль. Повторите попытку',
          true,
        );
        return;
      } else {
        SnackBarService.showSnackBar(
          context,
          'Неизвестная ошибка! Попробуйте еще раз или обратитесь в поддержку.',
          true,
        );
        return;
      }
    }

    navigator.pushNamedAndRemoveUntil('/mainpage', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: appBarMarmelad2(),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.04),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 70, 0, 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'ПОЧТА',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(0.5),
                        fontFamily: 'Overpass-Black',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  controller: emailTextInputController,
                  validator: (email) =>
                      email != null && !EmailValidator.validate(email)
                          ? 'Введите правильный Email'
                          : null,
                  decoration: InputDecoration(
                    errorBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    enabled: true,
                    contentPadding: EdgeInsets.fromLTRB(15, 10, 0, 10),
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
                    hintText: 'Marmelad@mail.ru',
                    hintStyle: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFFFFFFF).withOpacity(0.4)),
                    filled: true,
                    fillColor: Color(0xFFF7FF88).withOpacity(0.2),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'ПАРОЛЬ',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(0.5),
                        fontFamily: 'Overpass-Black',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.white),
                    autocorrect: false,
                    controller: passwordTextInputController,
                    obscureText: isHiddenPassword,
                    validator: (value) => value != null && value.length < 6
                        ? 'Минимум 6 символов'
                        : null,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xFFF7FF88), width: 3.0),
                        borderRadius: BorderRadius.circular(25),
                      ),
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
                      hintText: '******',
                      hintStyle: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFFFFFFF).withOpacity(0.4)),
                      filled: true,
                      fillColor: Color(0xFFF7FF88).withOpacity(0.2),
                      suffix: InkWell(
                        onTap: togglePasswordView,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Icon(
                            isHiddenPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Color(0xFFF7FF88),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () => Navigator.of(context).pushNamed('/signup'),
                  child: const Text(
                    'Регистрация',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: login,
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
                        'ПРОДОЛЖИТЬ',
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
        ),
      ),
    );
  }
}
