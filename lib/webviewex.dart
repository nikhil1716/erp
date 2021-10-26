import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewEx extends StatefulWidget {
  const WebViewEx({Key? key}) : super(key: key);

  @override
  _WebViewExState createState() => _WebViewExState();
}

class _WebViewExState extends State<WebViewEx> {
  bool isloading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isloading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : WebView(
                initialUrl: "https://i-infoway.com/",
                javascriptMode: JavascriptMode.unrestricted,
              ));
  }
}
