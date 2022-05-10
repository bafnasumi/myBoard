// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../services/google_sign_in.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 50),
//App header
// Icon(
//   Icons.
// ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "MyBoard",
                    style: GoogleFonts.pacifico(fontSize: 54,fontWeight: FontWeight.bold)
                  ),
                ),
                SizedBox(height: 10),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome back! ',
                      style: GoogleFonts.lato(
                            fontSize: 26, ),
                    ),
                    Text(
                      'Please enter your details.',
                      style: GoogleFonts.lato(
                            fontSize: 26, ),
                    
                    )
                  ],
                ),
                SizedBox(height: 40),
                //email
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Email'),
                      ),
                    ),
                  ),
                ),

//password
                SizedBox(height: 12),
                //email
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Password'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
//sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 10, 75, 107),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),

//sign in with google

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 10, 75, 107),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          final provider = Provider.of<GoogleSignInProvider>(
                              context,listen: false);
                          provider.GoogleLogIn();
                        },
                        child: Center(
                          child: Text(
                            'Sign in with Google',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('New User? ',style: GoogleFonts.sourceSansPro(fontSize: 16, ),),
                    Text(
                      'Register Now',
                      style: GoogleFonts.sourceSansPro(fontSize: 16,color: Colors.lightBlue,fontWeight: FontWeight.bold)
                    )
                  ],
                )
              ],
            ),

            // child:
          ),
        ),
      ),
    );
  }
}
