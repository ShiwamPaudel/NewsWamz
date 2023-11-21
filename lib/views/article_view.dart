import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  final String blogUrl;
  ArticleView({required this.blogUrl});

  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.disabled)
  ..loadRequest(Uri.parse(url));

  static String get url => '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('News', style: TextStyle(color: Colors.black),),
              Text('Wamz', style: TextStyle(color: Colors.blue),)
            ],
          ),
          actions: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.share,))
          ],

        ),
    body : Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
        child: WebViewWidget(
          controller: controller

          // currentUrl : widget.blogUrl,

        ),
      ),
    );
  }
}

