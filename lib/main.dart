import 'package:flutter/material.dart';
import 'pages/splash_screen.dart';
import 'pages/page_home.dart';

void main() => runApp(new App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.pink,
      ),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => new HomePage()
      },
      home: new HomePage()
    );
  }
}