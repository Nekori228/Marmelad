import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../services/snack_bar.dart';
import '../../widgets/appBar/authAppBar.dart';
import '../../widgets/appBar/bookingHelpAppBar.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  bool isHiddenPassword = true;
  TextEditingController emailTextInputController = TextEditingController();
  TextEditingController passwordTextInputController = TextEditingController();
  TextEditingController passwordTextRepeatInputController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailTextInputController.dispose();
    passwordTextInputController.dispose();
    passwordTextRepeatInputController.dispose();

    super.dispose();
  }

  void togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  Future<void> signUp() async {
    final navigator = Navigator.of(context);

    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    if (passwordTextInputController.text !=
        passwordTextRepeatInputController.text) {
      SnackBarService.showSnackBar(
        context,
        'Пароли должны совпадать',
        true,
      );
      return;
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailTextInputController.text.trim(),
        password: passwordTextInputController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e.code);

      if (e.code == 'email-already-in-use') {
        SnackBarService.showSnackBar(
          context,
          'Такой Email уже используется, повторите попытку с использованием другого Email',
          true,
        );
        return;
      } else {
        SnackBarService.showSnackBar(
          context,
          'Неизвестная ошибка! Попробуйте еще раз или обратитесь в поддержку.',
          true,
        );
      }
    }

    navigator.pushNamedAndRemoveUntil('/main', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: authAppBar(),
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
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.white),
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
                    hintText: 'Marmelad@mail.ru',
                    hintStyle: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFFFFFFF).withOpacity(0.4)),
                    filled: true,
                    fillColor: Color(0xFFF7FF88).withOpacity(0.2),
                  ),
                ),
                const SizedBox(height: 30),
                Align(
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
                TextFormField(
                  autocorrect: false,
                  style: TextStyle(color: Colors.white),
                  controller: passwordTextInputController,
                  obscureText: isHiddenPassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) => value != null && value.length < 6
                      ? 'Минимум 6 символов'
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
                        margin: EdgeInsets.all(5),
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
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ПОВТОРИТЕ ПАРОЛЬ',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF).withOpacity(0.5),
                      fontFamily: 'Overpass-Black',
                      fontSize: 14,
                    ),
                  ),
                ),
                TextFormField(
                  autocorrect: false,
                  style: TextStyle(color: Colors.white),
                  controller: passwordTextRepeatInputController,
                  obscureText: isHiddenPassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) => value != null && value.length < 6
                      ? 'Минимум 6 символов'
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
                        margin: EdgeInsets.all(5),
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
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text(
                    'Войти',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16
                    ),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: signUp,
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
                        'РЕГИСТРАЦИЯ',
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
