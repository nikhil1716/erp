import 'dart:developer';
import 'package:erp/ERPHome.dart';
import 'package:erp/ErpTabBar.dart';
import 'package:erp/LoginScreen.dart';
import 'package:erp/login.dart';
import 'package:flutter/material.dart';
import 'document/documentex.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: Colors.transparent,
        primarySwatch: Colors.indigo,
      ),
      home: SplashCreen(),
    );
  }
}
