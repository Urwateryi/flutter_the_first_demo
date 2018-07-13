import 'package:flutter/material.dart';
import 'package:the_first_one/home/homepage.dart';
import 'package:the_first_one/mine/minepage.dart';

class Index extends StatefulWidget {
  @override
  State<Index> createState() {
    return new _IndexState();
  }
}

class _IndexState extends State<Index> {
  int _currentIndex = 0;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;
  List<BottomNavigationBarItem> _navigationViews;

  @override
  void initState() {
    super.initState();

    _navigationViews = <BottomNavigationBarItem>[
      new BottomNavigationBarItem(
          title: new Text("首页"), icon: new Icon(Icons.home)),
      new BottomNavigationBarItem(
          title: new Text("我的"), icon: new Icon(Icons.perm_identity)),
    ];

    _pageList = <StatefulWidget>[new HomePage(), new MinePage()];

    _currentPage = _pageList[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar botNavBar = new BottomNavigationBar(
        items: _navigationViews,
        currentIndex: _currentIndex,
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            _currentPage = _pageList[_currentIndex];
          });
        });

    return new MaterialApp(
        home: new Scaffold(
      body: new Center(child: _currentPage),
      bottomNavigationBar: botNavBar,
    ));
  }
}
