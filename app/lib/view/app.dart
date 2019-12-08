import 'package:flutter/material.dart';
import 'package:app/route/index.dart';
import 'home/index.dart';
import 'dapp/index.dart';
import 'mine/index.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Linker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: Routes.getRoutes(context),
      home: AppPage(),
    );
  }
}

class AppPage extends StatefulWidget {
  AppPage({Key key}) : super(key: key);

  @override
  _AppPageState createState() => _AppPageState();
}

class _PageInfo {
  String name;
  Icon icon;
  Widget widget;

  _PageInfo({
    this.name,
    this.icon,
    this.widget,
  });
}

class _AppPageState extends State<AppPage> {
  List<_PageInfo> _pageMap = [
    _PageInfo(
      name: "首页",
      icon: Icon(Icons.home),
      widget: HomePage(),
    ),
    _PageInfo(
      name: "DApp",
      icon: Icon(Icons.home),
      widget: DAppPage(),
    ),
    _PageInfo(
      name: "我的",
      icon: Icon(Icons.home),
      widget: MinePage(),
    ),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page(),
      bottomNavigationBar: BottomNavigationBar(
        // 底部导航
        items: _bottomNavigationBarItems(),
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<BottomNavigationBarItem> _bottomNavigationBarItems() {
    List<BottomNavigationBarItem> items = [];
    _pageMap.forEach((page) {
      items.add(
          BottomNavigationBarItem(icon: page.icon, title: Text(page.name)));
    });
    return items;
  }

  Widget page() {
    return _pageMap[_selectedIndex].widget;
  }
}
