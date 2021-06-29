import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MePage extends StatefulWidget {
  @override
  MePageState createState() => new MePageState();
}

class MePageState extends State<MePage> {

  Widget headerWidget(){
    return Container(
        color: Colors.white,
        height: 200,
        child:Container(

        )
    );//整个头部
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
                  ],
                )
            )
          )
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



