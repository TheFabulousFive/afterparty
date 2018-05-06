import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key, this.title}) : super(key: key);

  static const String routeName = "/SplashScreen";

  final String title;

  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

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
    return new Scaffold(
      body: new Center(
        child: new Container(
          height: 50.0,
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: new EdgeInsets.all(10.0),
                child: new Text('afterparty',
                    style: new TextStyle(
                        fontSize: 40.0, fontStyle: FontStyle.italic)),
              ),
              new Text('loading...')
            ],
          ),
        ),
      ),
    );
  }
}
