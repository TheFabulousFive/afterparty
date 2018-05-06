import 'package:flutter/material.dart';
import 'package:afterparty/components/components.dart';

class HomePageVenuePartial extends StatefulWidget {
  @override
  _HomePageVenuePartialState createState() => new _HomePageVenuePartialState();
}

class _HomePageVenuePartialState extends State<HomePageVenuePartial> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new ListView(children: <Widget>[
        new StageFeed(name: 'The Boombox'),
        new StageFeed(name: 'Kinetic Field'),
        new StageFeed(name: 'Circuit Grounds')
      ]),
    );
  }
}
