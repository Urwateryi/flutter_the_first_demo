import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:the_first_one/home/homepage.dart';
import 'package:the_first_one/mine/minepage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(Main());

final ThemeData kIOSTheme = ThemeData(
  primaryIconTheme: const IconThemeData(color: Colors.white),
  primarySwatch: Colors.green,
  primaryColor: Colors.green,
  primaryColorBrightness: Brightness.light,
);

final ThemeData kDefaultTheme = ThemeData(
    primaryIconTheme: const IconThemeData(color: Colors.white),
    primarySwatch: Colors.blueGrey,
    primaryColor: Colors.blueGrey,
    accentColor: Colors.orangeAccent,
    fontFamily: "HYQiHei-30F",
    textTheme: TextTheme());

class Main extends StatefulWidget {
  @override
  State<Main> createState() {
    return MainState();
  }
}

class MainState extends State<Main> {
  int _currentIndex = 0;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;
  List<BottomNavigationBarItem> _navigationViews;

  var appBarTitles = ['首页', '我的'];

  @override
  void initState() {
    super.initState();

    _navigationViews = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          title: Text(appBarTitles[0]), icon: Icon(Icons.home)),
      BottomNavigationBarItem(
          title: Text(appBarTitles[1]), icon: Icon(Icons.perm_identity)),
    ];

    _pageList = <StatefulWidget>[HomePage(), MinePage()];

    _currentPage = _pageList[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar botNavBar = BottomNavigationBar(
        items: _navigationViews,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            _currentPage = _pageList[_currentIndex];
          });
        });

    return MaterialApp(
      theme: defaultTargetPlatform == TargetPlatform.iOS
          ? kIOSTheme
          : kDefaultTheme,
      home: Scaffold(
        appBar: AppBar(
          title: new Text(
            appBarTitles[_currentIndex],
          ),
        ),
        body: Center(child: _currentPage),
        bottomNavigationBar: botNavBar,
      ),
      localizationsDelegates: [
        //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        //此处
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
    );
  }
}
