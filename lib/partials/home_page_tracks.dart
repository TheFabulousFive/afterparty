import 'package:flutter/material.dart';
import 'package:afterparty/components/components.dart';

class HomePageTracksPartial extends StatefulWidget {
  @override
  _HomePageTracksPartialState createState() => new _HomePageTracksPartialState();
}

class _HomePageTracksPartialState extends State<HomePageTracksPartial> {
  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new ListView(children: <Widget>[
          new TrackFeedItem(),
          new TrackFeedItem(),
          new TrackFeedItem(),
          new TrackFeedItem(),
          new TrackFeedItem(),
          new TrackFeedItem(),
          new TrackFeedItem(),
          new TrackFeedItem(),
          new TrackFeedItem()
        ],),
    );
  }
}
