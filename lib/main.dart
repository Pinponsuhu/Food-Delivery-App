import 'package:flutter/material.dart';
import 'package:food/pages/forgot_password.dart';
import 'package:food/pages/home.dart';
import 'package:food/pages/loading.dart';
import 'package:food/pages/login.dart';
import 'package:food/pages/onboarding.dart';
import 'package:food/pages/sign_up.dart';
import 'package:food/pages/verify_password.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffFF7622)),
        fontFamily: "Sen",
        useMaterial3: true,

      ),
      routes: {
        "/": (context)=> HomeScreen(),
        "/onboarding": (context)=> Onboarding(),
        // "/home" : (context) => HomeScreen(),
        "/login" : (context)=> LoginScreen(),
        "/forgot-password" : (context)=> ForgotPassword(),
        "/verify-password" : (context) => VerifyPassword(),
        "/sign-up" : (context)=> SignUp()
      },
    );
  }
}
