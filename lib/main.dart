import 'package:flutter/material.dart';
import 'package:untitled/screens/authentication/forgotpass.dart';
import 'package:untitled/screens/authentication/login.dart';
import 'package:untitled/screens/authentication/otp.dart';
import 'package:untitled/screens/authentication/register.dart';
import 'package:untitled/screens/home/home.dart';
import 'package:untitled/screens/onboard/onboard1_screen.dart';
import 'package:untitled/screens/onboard/onboard2_screen.dart';
import 'package:untitled/screens/onboard/onboard3_screen.dart';
import 'package:untitled/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Splash(),
      routes: {
        '/onboard1': (context) => Onboard1(),
        '/onboard2': (context) => Onboard2(),
        '/onboard3': (context) => Onboard3(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/forgotpass': (context) => ForgotPass(),
        '/otp': (context) => OTP(),
        '/home': (context) => Home(),
      },
    );
  }
}

