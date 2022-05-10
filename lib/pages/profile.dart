import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myboardapp/services/google_sign_in.dart';
import 'package:provider/provider.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(user.photoURL!),
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 8,
        ),
        Text('hii ' + user.displayName!),
      ],
    ),);
  }
}
