import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:erp/webviewex.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'ErpTabBar.dart';

class RoastedHome extends StatefulWidget {
  @override
  _RoastedHomeState createState() => _RoastedHomeState();
}

class _RoastedHomeState extends State<RoastedHome> {
  static const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  static const colorizeTextStyle = TextStyle(
    fontSize: 20.0,
    // fontFamily: 'Horizon',
  );
  TextEditingController clinetid = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController psscode = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    savedlogin();
    
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage(""))),
              alignment: Alignment.topCenter,
              height: size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/his2.png"),
                      ),
                    ),
                  ),
                  AnimatedTextKit(animatedTexts: [
                    ColorizeAnimatedText(
                      'Primise Owners Dashboard',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                      // speed: Duration(milliseconds: 1000),
                    ),
                  ]),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ClientID",
                            style: TextStyle(
                                fontSize: 16.0, color: Color(0xff06074f)),
                          ),
                          TextFormField(
                            controller: clinetid,
                            decoration: InputDecoration(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Username",
                            style: TextStyle(
                                fontSize: 16.0, color: Color(0xff06074f)),
                          ),
                          TextFormField(
                            controller: email,
                            decoration: InputDecoration(),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Password",
                            style: TextStyle(
                              color: Color(0xff06074f),
                              fontSize: 16.0,
                            ),
                          ),
                          TextFormField(
                            controller: psscode,
                            obscureText: true,
                            decoration: InputDecoration(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Forget Paswword?",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14.0),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Expanded(
                      flex: 4,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            MaterialButton(
                              elevation: 12.0,
                              minWidth: size.width * 0.60,
                              height: size.height * 0.05,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26.0)),
                              color: Color(0xff06074f),
                              onPressed: () async {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setString("log", clinetid.text);
                                prefs.setString("un", email.text);
                                prefs.setString("PS", psscode.text);

                                print(
                                    "client id-->${prefs.getString("log")},unnn--> ${prefs.getString("un")},pass-->${prefs.getString("PS")}");
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => homepage()));
                              },
                              child: Text("LOGIN",
                                  style: GoogleFonts.titilliumWeb(
                                    textStyle: TextStyle(
                                      fontSize: 36.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff06074f),
                                      letterSpacing: 0.75,
                                    ),
                                  )),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Divider(),
                            Text("Powered by"),
                            // size
                            Container(
                              height: 35,
                              width: 105,
                              child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext ctx) =>
                                                WebViewEx(),
                                          ),
                                        );
                                      },
                                      child: Image.asset("assets/logo.png")),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  savedlogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.getString("log");
    prefs.getString("un");
    prefs.getString("PS");

    

    print(
        "${prefs.getString("log")} , ${prefs.getString("un")},${prefs.getString("log")}");
  }
}
