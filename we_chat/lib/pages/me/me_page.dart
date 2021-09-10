import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:we_chat/pages/components/base_cell.dart';

class MePage extends StatefulWidget {
  @override
  MePageState createState() => new MePageState();
}

class MePageState extends State<MePage> {

  Widget headerWidget() {
    return Container(
      color: Colors.white,
      height: 120,
      child: Container(
       color: Colors.yellow,
        margin: EdgeInsets.only(top: 20, bottom: 20),
//        padding: EdgeInsets.all(10),
        child: Container(
          margin: EdgeInsets.only(left: 20),
//          padding: EdgeInsets.all(5),
//          color: Colors.red,
          child: Row(
            children: <Widget>[
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
//                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage('images/Hank.png'), fit: BoxFit.cover),
                ),
              ), //头像
              Expanded(
                child: Container(
                  color: Colors.red,
//                  margin: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 5),
//                  width: MediaQuery.of(context).size.width - 95,
                  padding: EdgeInsets.only(left: 10, top: 8, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        color: Colors.yellow,
                        height: 35,
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Nacker',
                              style: TextStyle(fontSize: 25, color: Colors.black),
                            ),
                            Image(
                              image: AssetImage('images/相机.png'),
                              width: 25,
                            )
                          ],
                        ),
                      ), //昵称
                      Container(
                        height: 35,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '微信号:1234',
                              style:
                              TextStyle(fontSize: 17, color: Colors.grey),
                            ),
                            Image(
                              image: AssetImage('images/icon_right.png'),
                              width: 15,
                            )
                          ],
                        ),
                      ), //微信号+箭头
                    ],
                  ),
                ), //右边的部分,
              )
            ],
          ),
        ),
//        padding: ,
      ), //头部
    ); //整个头部
}
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('我的'),
      ),
      body: Stack(
        children:<Widget> [
          Container(
            color: Color.fromRGBO(220, 220, 220, 1), 
            child:  MediaQuery.removePadding(
              removeTop: true,
              context: context,
                child: ListView(
                  children: <Widget> [
                    headerWidget(), //头部
                    SizedBox(
                      height: 10,
                    ),
                    BaseCell("支付", "", 'images/微信 支付.png', ""),
                    SizedBox(
                      height: 10,
                    ),
                    BaseCell("收藏", "", 'images/微信收藏.png', ""),
                    Row(
                      children: <Widget>[
                        Container(width: 50, height: 0.5, color: Colors.white),
                        Container(height: 0.5, color: Colors.grey)
                      ],
                    ),//分割线
                    BaseCell("相册", "", 'images/微信相册.png', ""),
                    Row(
                      children: <Widget>[
                        Container(width: 50, height: 0.5, color: Colors.white),
                        Container(height: 0.5, color: Colors.grey)
                      ],
                    ),// 分割线
                    BaseCell("卡包", "", 'images/微信卡包.png', ""),
                    Row(
                      children: <Widget>[
                        Container(width: 50, height: 0.5, color: Colors.white),
                        Container(height: 0.5, color: Colors.grey)
                      ],
                    ), //分割线
                    BaseCell("表情", "", 'images/微信表情.png', ""),
                    SizedBox(
                      height: 10,
                    ),
                    BaseCell("设置", "", 'images/微信设置.png', ""),
                  ],
                )
            )
          ),
          Container(
            height: 25,
            color: Color.fromRGBO(0, 0, 0, 0),
            margin: EdgeInsets.only(top: 600, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Image(
                  image: AssetImage('images/相机.png'),
                )
              ],
            ),
          ), //相机

        ],
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
  void didUpdateWidget(MePage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}



