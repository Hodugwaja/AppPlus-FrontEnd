import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

Widget _AppBar() {
  return AppBar(
    title: GestureDetector(
      onTap: () {
        print("햄버거바");
      },
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.plus_one),
        onPressed: () {},
      )
    ],
  );
}

_loadContents() {
  return contentsRepository.loadContentsFromLocation(currentLocation);
}

Widget _Body() {
  return FutureBuilder(
    future: _loadContents(),
    builder: (context, snapshot){
      if (!snapshot.hasData) {
        return Center(
          child: CircularProgressIndicator(
            semanticsLabel: '로딩중입니다',
          ),
        );
      }
      return Container();
    },
  );
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      body: _Body(),
    );
  }
}
