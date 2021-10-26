import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:erp/ERPHome.dart';
import 'package:erp/LoginScreen.dart';
import 'package:erp/document/documentex.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Sop.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  static const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];
  static const colorizeTextStyle = TextStyle(
    fontSize: 12.0,
    // fontFamily: 'Horizon',
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }

  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              "assets/logo2.png",
              fit: BoxFit.contain,
              height: 32,
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 5, bottom: 5),
            //   child: CircleAvatar(
            //     radius: 30.0,
            //     backgroundImage: AssetImage("assets/logo1.jpeg"),
            //     backgroundColor: Colors.transparent,
            //   ),
            // ),
            SizedBox(
              width: 20,
            ),
            Center(
              child: Text(
                "HIS-ERP",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 5),
              child: AnimatedTextKit(animatedTexts: [
                ColorizeAnimatedText(
                  'Primise Owners Dashboard',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                  // speed: Duration(milliseconds: 1000),
                ),
              ]),
            ),
          ],
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext bc) => [
              PopupMenuItem(
                child: Text("Send Request"),
                onTap: () {},
              ),
              PopupMenuItem(
                child: Text("Settings"),
                onTap: () {},
              ),
              PopupMenuItem(
                child: Text("Logout"),
                onTap: () async {
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  pref.remove("log");
                  pref.remove("un");
                  pref.remove("PS");

                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (ctx) => RoastedHome()));
                },
              )
            ],
          ),
        ],
        centerTitle: true,
        bottom: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              child: Text("Profile",
                  style: TextStyle(color: Colors.white, fontSize: 15)),
            ),
            Tab(
              child: Text("SOP",
                  style: TextStyle(color: Colors.white, fontSize: 15)),
            ),
            Tab(
              child: Text("File",
                  style: TextStyle(color: Colors.white, fontSize: 15)),
            )
          ],
        ),
        backgroundColor: Color(0XFF06074F),
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        HomepageErp(),
        TableEx(),
        Documentsex(),
      ]),
    );
  }
}
