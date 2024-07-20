import 'package:flutter/material.dart';
import 'package:maestroshop/utils/colors_pers.dart';
import 'package:maestroshop/view/home.dart';
import 'package:maestroshop/view/signIn_signUp/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Maestro Shop',
      color: ColorsPers.colorBlueClair,
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
