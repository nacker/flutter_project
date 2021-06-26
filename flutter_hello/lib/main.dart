import 'package:flutter/material.dart';

import 'base_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('BaseDemo'),
      ),
      // body:BaseDemo(),//第一个demo
      // body:RichTextDemo(),//富文本
      body:TextDemo(),//富文本

    );
  }
}
