import 'package:flutter/material.dart';

import 'package:afterparty/partials/home_page_welcome.dart';
import 'package:afterparty/partials/home_page_tracks.dart';
import 'package:afterparty/partials/home_page_venue.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  static const String routeName = "/HomePage";

  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int _currentPage = 0;
  final _pagerController = new PageController();

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
      ),
      body: new PageView(
        controller: _pagerController,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        children: <Widget>[
          new HomePageWelcomePartial(),
          new HomePageTracksPartial(),
          new HomePageVenuePartial(),
        ],

      ),
      bottomNavigationBar: new BottomNavigationBar(
          currentIndex: _currentPage,
          onTap: (index) {
            _pagerController.animateToPage(index, duration: new Duration(milliseconds: 300), curve: Curves.easeIn);
            setState(() {
              _currentPage = index;
            });
          },
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                icon: new Icon(Icons.home), title: new Text('WELCOME')),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.music_note), title: new Text('TRACKS')),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.map), title: new Text('VENUE'))
          ]),
    );
  }

  void _onFloatingActionButtonPressed() {
  }
}