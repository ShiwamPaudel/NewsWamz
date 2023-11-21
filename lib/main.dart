import 'package:flutter/material.dart';
import 'package:news_wamz/views/article_view.dart';
import 'package:news_wamz/views/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const Home(),
    );
  }
}

