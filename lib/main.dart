import 'package:flutter/material.dart';
import 'package:login_register_ui_design/pages/creatAccount.dart';
import 'package:login_register_ui_design/pages/loginpage.dart';
import 'package:login_register_ui_design/pages/slide_screen.dart';
import 'package:login_register_ui_design/pages/verification.dart';
import 'package:login_register_ui_design/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SlideScren(),
    );
  }
}
