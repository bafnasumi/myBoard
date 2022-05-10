import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myboardapp/pages/loggedin.dart';
import 'package:myboardapp/pages/signuppage.dart';
import 'package:myboardapp/services/google_sign_in.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Color.fromARGB(255, 199, 149, 0),
      body: Text('lets start beautiful stuff'),
    );
  }
}
