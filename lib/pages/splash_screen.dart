import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key, this.title}) : super(key: key);

  static const String routeName = "/SplashScreen";

  final String title;

  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

/// // 1. After the page has been created, register it with the app routes 
/// routes: <String, WidgetBuilder>{
///   SplashScreen.routeName: (BuildContext context) => new SplashScreen(title: "SplashScreen"),
/// },
///
/// // 2. Then this could be used to navigate to the page.
/// Navigator.pushNamed(context, SplashScreen.routeName);
///

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _appInit();
  }
  _appInit() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, _appInitCallback);
  }

  _appInitCallback() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  Widget build(BuildContext context) {
        return new Scaffold(body:
        new Center(
          child: new Text('afterparty'),
        ));
  }
}