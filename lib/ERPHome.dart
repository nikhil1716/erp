import 'package:clay_containers/widgets/clay_container.dart';
import 'package:erp/Profile/ProfileDetails.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:custom_bottom_sheet/custom_bottom_sheet.dart';

class HomepageErp extends StatefulWidget {
  const HomepageErp({Key? key}) : super(key: key);

  @override
  _HomepageErpState createState() => _HomepageErpState();
}

class _HomepageErpState extends State<HomepageErp> {
  var nikhil = 10;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.white, body: allwidgets()),
    );
  }

  Widget commonc() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 290,
          width: 300,
          // child: Text("sakshi Gothal"),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(colors: [
              Colors.purple.shade900,
              Colors.red.shade700,
            ]),
          ),
        ),
        Container(
          height: 270,
          width: 280,
          color: Colors.white.withOpacity(0.25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
// SizedBox(height: MediaQuery.of(context).size.height/4,),
              Text(
                "Sakshi Gothal",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Divider(thickness: 3),
              Text(
                "Aman Spring",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Divider(thickness: 3),
              Text(
                "Group of Satelite",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Divider(thickness: 3),
              Text(
                "89898",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Text("4545")
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  showcard(String txt, Color col, Color col1) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [col, col1])),
          height: 200,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  txt,
                  style: TextStyle(fontSize: 40),
                ),
              )
            ],
          )),
    );
  }

  void onpressButton() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              height: 650,
// color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Material(
                                child: ListTile(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  selected: true,
                                  selectedTileColor: Colors.grey[300],
                                  hoverColor: Colors.red,
                                  enabled: true,
                                  onTap: () {},
                                  leading: Text(""),
                                  subtitle: Text(""),
                                ),
                              );
                            },
                            separatorBuilder: (ctx, index) {
                              return Divider();
                            },
                            itemCount: 4)
                      ],
                    ),
                  ),
                ),
              ));
        });
  }

  secondOnpress() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              height: 650,
// color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Material(
                                child: ListTile(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  selected: true,
                                  selectedTileColor: Colors.grey[300],
                                  hoverColor: Colors.red,
                                  enabled: true,
                                  onTap: () {},
                                  leading: Text(""),
                                  subtitle: Text(""),
                                ),
                              );
                            },
                            separatorBuilder: (ctx, index) {
                              return Divider();
                            },
                            itemCount: 4)
                      ],
                    ),
                  ),
                ),
              ));
        });
  }

  thirdOnPress() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              height: 650,
// color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Material(
                                child: ListTile(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  selected: true,
                                  selectedTileColor: Colors.grey[300],
                                  hoverColor: Colors.red,
                                  enabled: true,
                                  onTap: () {},
                                  leading: Text(""),
                                  subtitle: Text(""),
                                ),
                              );
                            },
                            separatorBuilder: (ctx, index) {
                              return Divider();
                            },
                            itemCount: 4)
                      ],
                    ),
                  ),
                ),
              ));
        });
  }

  allwidgets() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Expanded(
            child: Column(
          children: [
            commonc(),
            Divider(),
            Column(
              children: [
                GestureDetector(
                  child: Column(
                    children: [
                      showcard("Profile", Color(0XFFcc2b5e), Color(0XFF753a88)),
                    ],
                  ),
                  onTap: () {
                    onpressButton();
                  },
                ),
                GestureDetector(
                  child: Column(
                    children: [
                      showcard("Loan", Color(0XFF00467F), Color(0XFFA5CC82)),
                    ],
                  ),
                  onTap: () {
                    secondOnpress();
                  },
                ),
                GestureDetector(
                  child: Column(
                    children: [
                      showcard(
                          "MileStone", Color(0XFF9796f0), Color(0XFFfbc7d4)),
                    ],
                  ),
                  onTap: () {
                    // customBottomSheet2(context);
                    thirdOnPress();
                  },
                )

                // showcard("Profile", Color(0XFF57CC99)),
                // showcard("Profile", Color(0XFF57CC99)),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
