import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const.dart';

class FriendPage extends StatefulWidget {
  @override
  FriendPageState createState() => new FriendPageState();
}

class FriendPageState extends State<FriendPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(''),
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(FriendPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}

class _FriendCell extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String groupTitle;
  final String imageAssets;

  const _FriendCell(this.imageUrl, this.name, this.groupTitle, this.imageAssets);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 10),
          height: groupTitle != null ? 30 : 0,
          color: Color.fromRGBO(1, 1, 1, 0.0),
          child: groupTitle != null
              ? Text(
            groupTitle,
            style: TextStyle(color: Colors.grey),
          )
              : null,
        ), //cell的头
        Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),

                    image: DecorationImage(
                      image: AssetImage(imageAssets),
                      // image: imageUrl != null
                      //     ? NetworkImage(imageUrl)
                      //     : AssetImage(imageAssets),
                    )),
              ), //图片
              Container(
                child: Text(
                  name,
                  style: TextStyle(fontSize: 17),
                ),
              ), //昵称
            ],
          ),
        ), //Cell内容
        Container(
          height: 0.5,
          color: WeChatThemeColor,
          child: Row(
            children: <Widget>[
              Container(
                width: 50,
                color: Colors.white,
              )
            ],
          ),
        ) //分割线
      ],
    );
  }
}
