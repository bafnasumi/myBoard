import 'package:flutter/material.dart';
import 'package:myboardapp/pages/audio.dart';
import 'package:myboardapp/pages/authpage.dart';
import 'package:myboardapp/pages/homepage.dart';
import 'package:myboardapp/pages/links.dart';
import 'package:myboardapp/pages/loggedin.dart';
import 'package:myboardapp/pages/memories.dart';
import 'package:myboardapp/pages/quotes.dart';
import 'package:myboardapp/pages/reminder.dart';
import 'package:myboardapp/pages/screenshots.dart';
import 'package:myboardapp/pages/screentime.dart';
import 'package:myboardapp/pages/loginpage.dart';
import 'package:myboardapp/pages/todo.dart';
import 'package:myboardapp/pages/video.dart';
import 'package:myboardapp/pages/voicetotext.dart';
import 'package:myboardapp/pages/welcomescreen.dart';
import 'package:myboardapp/pages/profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myboardapp/services/google_sign_in.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'welcomescreen',
        initialRoute: '/',
        routes: {
          '/': (context) => const WelcomeScreen(),
          '/homepage': (context) => const HomePage(),
          '/login': (context) => const LoginPage(),
          // '/signup': (context) => const LogInPage(),
          '/reminder': (context) => const Reminder(),
          '/voicetotext': (context) => const VoiceToText(),
          // '/todo': (context) => const ToDo(),
          '/memories': (context) => const Memories(),
          '/screenshots': (context) => const Screenshots(),
          '/links': (context) => const Links(),
          '/screentime': (context) => const ScreenTime(),
          '/quotes': (context) => const Quotes(),
          '/video': (context) => const Video(),
          '/audio': (context) => const Audio(),
          '/profile': (context) => const Profile(),
        },
      ),
    );
  }
}
