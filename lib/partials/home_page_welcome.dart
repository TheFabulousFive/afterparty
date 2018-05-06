import 'package:flutter/material.dart';
import 'package:afterparty/components/components.dart';

class HomePageWelcomePartial extends StatefulWidget {
  @override
  _HomePageWelcomePartialState createState() => new _HomePageWelcomePartialState();
}

class _HomePageWelcomePartialState extends State<HomePageWelcomePartial> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.pink,
      child: new ListView(children: <Widget>[
        new StageFeed(),
        new StageFeed(),
        new StageFeed(),
        new StageFeed(),
        new StageFeed(),
        new StageFeed(),
        new StageFeed()
      ]),
    );
  }
}
