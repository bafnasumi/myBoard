// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myboardapp/pages/loginpage.dart';
import 'package:myboardapp/pages/registerpage.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => AuthPageState();
}

class AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;

  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LogInPage(showRegisterPage: toggleScreens);
    } else {
     return RegisterPage(showLoginPage: toggleScreens);
    }
  }
}
