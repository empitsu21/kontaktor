import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



class WebViewer extends StatelessWidget {

  final String url;

  WebViewer({this.url,});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: IconButton(
              icon: Icon(Icons.arrow_back),
            ),
          ),
        ),
        body: WebView(
          initialUrl: url,
        ),
      ),
    );
  }

}