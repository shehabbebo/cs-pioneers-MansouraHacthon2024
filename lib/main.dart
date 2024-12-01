import 'package:final_project/screens/card2.dart';
import 'package:final_project/firebase_options.dart';
import 'package:final_project/screens/card1.dart';
import 'package:final_project/screens/card2.dart';
import 'package:final_project/screens/forgetpass.dart';
import 'package:final_project/screens/homepage.dart';
import 'package:final_project/screens/login.dart';
import 'package:final_project/screens/secondscreen.dart';
import 'package:final_project/screens/signup.dart';
import 'package:final_project/screens/start.dart';
import 'package:final_project/screens/third.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'LoginPage': (context) => LoginPage(),
        Signup.id: (context) => Signup(),
        ForgotPassword.id: (context) => ForgotPassword(),
        Startpage.id: (context) => const Startpage(),
        Homepage.id: (context) => Homepage(),
        CardPage1.id: (context) => CardPage1(), // معرف كارد 1
        CardPage2.id: (context) =>
            CardPage2(num: '2'), // روت صفحة الكارد الثاني
        ScreenPage.id: (context) => const ScreenPage(),
        ThirdPage.id: (context) => ThirdPage(),
      },
      initialRoute: Startpage.id,
      debugShowCheckedModeBanner: false,
    );
  }
}
