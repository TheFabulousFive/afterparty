import 'package:afterparty/partials/home_page_tracks.dart';
import 'package:afterparty/partials/home_page_venue.dart';
import 'package:afterparty/partials/home_page_welcome.dart';
import 'package:flutter/material.dart';

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
          title: new Text('afterparty'),
          elevation: 0.0,
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.flip_to_front), onPressed: () {})
          ],
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
        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
              canvasColor: Colors.black,
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Theme.of(context).primaryColor,
              textTheme: Theme
                  .of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.yellow))),
          child: new BottomNavigationBar(
              currentIndex: _currentPage,
              onTap: (index) {
                _pagerController.animateToPage(index,
                    duration: new Duration(milliseconds: 300),
                    curve: Curves.easeIn);
                setState(() {
                  _currentPage = index;
                });
              },
              items: <BottomNavigationBarItem>[
                new BottomNavigationBarItem(
                    icon: new Icon(Icons.home), title: new Text('YOUR MOVES')),
                new BottomNavigationBarItem(
                    icon: new Icon(Icons.music_note),
                    title: new Text('TRACKS')),
                new BottomNavigationBarItem(
                    icon: new Icon(Icons.map), title: new Text('VENUE'))
              ]),
        ));
  }

  void _onFloatingActionButtonPressed() {}
}
