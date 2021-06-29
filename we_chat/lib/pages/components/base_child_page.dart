import 'package:flutter/material.dart';
import 'package:we_chat/const.dart';

class BaseChildPage extends StatelessWidget {
  final String title;
  BaseChildPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: WeChatThemeColor,
        title: Text('$title'),
      ),
      body: Center(
        child: Text('$title'),
      ),
    );
  }
}
