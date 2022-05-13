// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'pagenavigator.dart';
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
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 75, 107),
        title: Text(
          'Home',
          style: TextStyle(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          height: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueGrey,
                          ), //BoxDecoration
                          child: Center(
                            child: GestureDetector(
                              onTap:() => Navigator.pushNamed(context, '/links'),
                              child: Text(
                                'Links',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ), //Container
                      ), //Flexible
                      SizedBox(
                        width: 20,
                      ), //SizedBox
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          height: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueGrey,
                          ),
                          child: Center(
                            child: Text(
                              'Board 2',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ), //BoxDecoration
                        ), //Container
                      ) //Flexible
                    ], //<Widget>[]
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ), //Row
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          height: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueGrey,
                          ), //BoxDecoration
                          child: Center(
                            child: Text(
                              'Board 3',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ), //Container
                      ), //Flexible
                      SizedBox(
                        width: 20,
                      ), //SizedBox
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          height: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueGrey,
                          ),
                          child: Center(
                            child: Text(
                              'Board 4',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ), //BoxDecoration
                        ), //Container
                      ) //Flexible
                    ], //<Widget>[]
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ), //Row
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          height: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueGrey,
                          ), //BoxDecoration
                          child: Center(
                            child: Text(
                              'Board 5',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ), //Container
                      ), //Flexible
                      SizedBox(
                        width: 20,
                      ), //SizedBox
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          height: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueGrey,
                          ),
                          child: Center(
                            child: Text(
                              'Board 6',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ), //BoxDecoration
                        ), //Container
                      ) //Flexible
                    ], //<Widget>[]
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ), //Row
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
        ),
      ),
    );
  }
}
