import 'package:flutter/material.dart';
import 'package:we_chat/pages/chat/chat_page.dart';
import 'package:we_chat/pages/discover/discover_page.dart';
import 'package:we_chat/pages/friends/friends_page.dart';
import 'package:we_chat/pages/me/me_page.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;
  final PageController _controller = PageController(initialPage: 0);
  List<Widget> _pages = [ChatPage(), FriendPage(), DiscoverPage(), MePage()];

  Widget build(BuildContext context) {
      return Scaffold(
        body: PageView(
          //页面滚动变化时调用
//        onPageChanged: (int index) {
//          _currentIndex = index;
//          setState(() {});
//        },
          //拒绝页面滚动
          physics: NeverScrollableScrollPhysics(),
          controller: _controller,
          children: _pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
            _controller.jumpToPage(index);
          },
          selectedFontSize: 12.0,
          currentIndex: _currentIndex,
          fixedColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          items: [
              BottomNavigationBarItem(
              icon: Image.asset(
              'images/tabbar_chat.png',
                height: 20,
                width: 20,
              ),
              activeIcon: Image.asset(
                'images/tabbar_chat_hl.png',
                height: 20,
                width: 20,
              ),
              title: Text('微信'),
              ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark), title: Text('通讯录')),
            BottomNavigationBarItem(icon: Icon(Icons.history), title: Text('发现')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), title: Text('我')),
          ],
        ),
      );
  }
}