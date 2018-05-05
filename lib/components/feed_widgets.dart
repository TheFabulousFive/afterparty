import 'package:flutter/material.dart';

class FullWidthText extends StatelessWidget {
  String text;
  TextStyle style;

  FullWidthText([String text, TextStyle style=null]) {
    this.text = text;
    this.style = style ?? new TextStyle();
  }

  @override
  Widget build(BuildContext context) {
    return new Flex(
      direction: Axis.horizontal,
      children: <Widget>[
        new Text(text, style: style)
      ],
    );
  }
}


class StageFeed extends StatelessWidget {
  static const _PADDING = 10.0;
  final String name;
  final String byline;
  StageFeed({this.name = "Stage Name", this.byline = "Stage Byline"});

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: new Padding(
        padding: new EdgeInsets.all(_PADDING),
        child: new Column(
          children: <Widget>[
            new Padding(
                padding: new EdgeInsets.only(bottom: _PADDING),
                child: new Image.network(
                    'https://media.giphy.com/media/R7XgytgbsYD1C/giphy.gif')),
            new FullWidthText(name, new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
            )),
            new FullWidthText(byline),
          ],
        ),
      ),
    );
  }
}

class TrackFeedItem extends StatelessWidget {
  static const _PADDING = 10.0;
  final String name;
  final String byline;
  TrackFeedItem({this.name = "Track Name", this.byline = "Steve the Machine"});

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: new Padding(
        padding: new EdgeInsets.all(_PADDING),
        child: new Column(
          children: <Widget>[
            new Padding(
                padding: new EdgeInsets.only(bottom: _PADDING),
                child: new Image.network(
                    'https://media.giphy.com/media/R7XgytgbsYD1C/giphy.gif')),
            new FullWidthText(name, new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0
            )),
            new FullWidthText(byline),
          ],
        ),
      ),
    );
  }
}
