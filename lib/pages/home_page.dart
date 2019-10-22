import 'package:flutter/material.dart';
import 'package:tutorias_comica/pages/add_page.dart';
import 'package:tutorias_comica/pages/comics_page.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    AddPage(),
    ComicsPage(),
  ];

  void onTapTapped(int index){

    setState(() {
      indexTap = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
        backgroundColor: Colors.blueAccent,
      ),
      body: widgetsChildren[indexTap],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexTap, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.book),
            title: new Text('Comics'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.add_circle),
            title: new Text('Agregar'),
          ),
        ],
        onTap: onTapTapped,
      ),
    );
  }
}