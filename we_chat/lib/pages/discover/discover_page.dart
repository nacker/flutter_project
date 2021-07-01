import 'package:flutter/material.dart';
import 'package:we_chat/const.dart';
import 'package:we_chat/pages/components/base_cell.dart';


class DiscoverPage extends StatefulWidget {
  @override
  DiscoverPageState createState() => new DiscoverPageState();
}

class DiscoverPageState extends State<DiscoverPage> {
  Color _themeColor = WeChatThemeColor;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: _themeColor,
        centerTitle: true,
        title: new Text('发现'),
        elevation: 0.0, //底部边栏~~~
      ),
      body: Container(
        color: _themeColor,
        height: 800,
        child: ListView(
          children: <Widget> [
            BaseCell("朋友圈", "", "images/朋友圈.png", ""),
            SizedBox(height: 10),
            BaseCell("扫一扫", "", "images/扫一扫2.png", ""),
            Row(
              children: <Widget> [
                Container(width: 50, height: 0.5, color: Colors.white),
                Container(height: 0.5, color: Colors.grey)
              ],
            ),
            BaseCell("摇一摇", "", "images/摇一摇.png", ""),
            SizedBox(height: 10),
            BaseCell("看一看", "", "images/看一看icon.png", ""),
            Row(
              children: <Widget> [
                Container(width: 50, height: 0.5, color: Colors.white),
                Container(height: 0.5, color: Colors.grey)
              ],
            ),
            BaseCell("搜一搜", "", "images/搜一搜 2.png", ""),
            SizedBox(height: 10),
            BaseCell("附近的人", "", "images/附近的人icon.png", ""),
            SizedBox(height: 10),
            BaseCell("购物", "618限时特价", "images/购物.png", "images/badge.png"),
            Row(
              children: <Widget> [
                Container(width: 50, height: 0.5, color: Colors.white),
                Container(height: 0.5, color: Colors.grey)
              ],
            ),
            BaseCell("游戏", "", "images/游戏.png", ""),
            SizedBox(height: 10),
            BaseCell("小程序", "", "images/小程序.png", ""),
          ],
        ),
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
  void didUpdateWidget(DiscoverPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}