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
  static const _PADDING = 30.0;
  final String name;
  final String byline;
  final String imgSrc;
  StageFeed({this.name = "Electric Daisy Carnival Orlando, 2018", this.byline = "November 2018",
  this.imgSrc = 'https://media.giphy.com/media/l0HlP6ngCGSJiffhu/giphy.gif'});

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.black,
      child: new Padding(
        padding: new EdgeInsets.all(_PADDING),
        child: new Column(
          children: <Widget>[
            new Padding(
                padding: new EdgeInsets.only(bottom: _PADDING),
                child: new Image.network(imgSrc)),
            new FullWidthText(name, new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: Colors.white,
            )),
            new FullWidthText(byline, new TextStyle(
              color: Colors.white
            )),

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
  final String imgSrc;
  TrackFeedItem({this.name = "I'm The One", this.byline = "DJ Khaled",
  this.imgSrc = 'https://media.giphy.com/media/W73iWE7kUC49O/giphy.gif'});

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.black,
      child: new Padding(
        padding: new EdgeInsets.all(_PADDING),
        child: new Column(
          children: <Widget>[
            new Padding(
                padding: new EdgeInsets.only(bottom: _PADDING),
                child: new Image.network(
                    this.imgSrc)),
            new FullWidthText(name, new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white,
            )),
            new FullWidthText(byline, new TextStyle(
                 color: Colors.white,
            )),
          ],
        ),
      ),
    );
  }
}
