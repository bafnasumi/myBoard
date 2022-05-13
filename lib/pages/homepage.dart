// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import './newpages.dart';
// import 'package:myboardapp/pages/loggedin.dart';
// import 'package:myboardapp/pages/loginpage.dart';
// import 'package:myboardapp/services/google_sign_in.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 199, 149, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Lets make something beautiful!!'),
            MaterialButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              color: Colors.teal.shade400,  
              child: Text('Sign Out'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(NewPage(1));
              },
              child: Text("todo"),
            )
          ],
        ),
      ),
    );
  }
}
