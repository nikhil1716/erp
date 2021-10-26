import 'package:erp/ErpTabBar.dart';
import 'package:erp/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashCreen extends StatefulWidget {
  const SplashCreen({Key? key}) : super(key: key);

  @override
  _SplashCreenState createState() => _SplashCreenState();
}

class _SplashCreenState extends State<SplashCreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1), () async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      if (prefs.getString("log") == null &&
          prefs.getString("un") == null &&
          prefs.getString("PS") == null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => RoastedHome()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => homepage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/splashScreen.json'),
      ),
    );
  }
}
