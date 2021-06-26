import 'package:flutter/material.dart';

class BaseDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.yellow,
      child: new Row(
        children: <Widget>[
          Container(
            color: Colors.red,
            child: Icon(
              Icons.add,
              size: 45,
            ),
//            padding: EdgeInsets.only(left: 30,right: 30,top: 30,bottom: 30),
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(20),
            height: 200,
            width: 200,
          )
        ],
      ),

    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '《 Flutter 》',
        style: TextStyle(
          fontSize: 30,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(
              text: '--',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
              )),
          TextSpan(
              text: 'devlei',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ))
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _lector = 'devlei';
  final String _title = 'Flutter';

  @override
  Widget build(BuildContext context) {
    return Text(
      '《 $_title 》-- $_lector。快速上手Flutter技术.',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
    );
  }
}
