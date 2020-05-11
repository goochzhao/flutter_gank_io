import 'package:flutter/material.dart';
import 'package:flutterappgankio/pages/HomePage.dart';
import 'package:flutterappgankio/pages/MinePage.dart';
import 'package:flutterappgankio/pages/MzPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _curIndex = 0;

  @override
  Widget build(BuildContext context) {
    var _bottomTab = (index) {
      setState(() {
        _curIndex = index;
      });
    };
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _bottomTab,
        currentIndex: _curIndex,
        fixedColor: Colors.black87,
        selectedLabelStyle: TextStyle(
          fontSize: 14,
          color: Colors.deepPurple,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: Icon(
              Icons.home,
              color: Colors.deepPurple,
            ),
            title: Text(
              "主页",
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            activeIcon: Icon(
              Icons.bookmark,
              color: Colors.deepPurple,
            ),
            title: Text(
              "妹纸",
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            activeIcon: Icon(
              Icons.person,
              color: Colors.deepPurple,
            ),
            title: Text(
              "我的",
            ),
          ),
        ],
      ),
      body: Center(
          child: IndexedStack(
            index: _curIndex,
            children: <Widget>[
              HomePage(),
              MzPage(),
              MinePage(),
            ],
          )),
    );
  }
}
