import 'package:flutter/material.dart';
import 'package:editory/page/home.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  // ignore: non_constant_identifier_names

  int _currentPageIndex;
  var name = "호두과자";

  void initState() {
    super.initState();
    _currentPageIndex = 0;

  }

  Widget _bodyWidget() {
    switch(_currentPageIndex){
      case 0:
        return Home();
        break;
      case 1:
        return Container();
        break;
      case 2:
        return Container();
        break;
      case 3:
        return Container();
        break;
      case 4:
        return Container();
        break;
      default:
        return Container();
        break;
    }

  }

  Widget _BottomNav(){
    return BottomNavigationBar(items: [],);
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(),
      bottomNavigationBar: _BottomNav(),
    );
  }
}