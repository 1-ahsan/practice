import 'package:flutter/material.dart';
import 'lifecycle.dart';
import 'container.dart';
import 'rows and columns.dart';
import 'intractions and events.dart';
import 'list.dart';
import 'navigation.dart';
import 'animation.dart';
import 'myanimation.dart';
import 'updateState.dart';

class page2 extends StatefulWidget{
  page2({super.key});

  State<page2> createState() => _page2states();
}

class _page2states extends State<page2>{

  int _index = 0;
  final List<Widget> _items = [
    lifecycle(),
    contain(),
    rowColumn(),
    intractions(),
    listing(),
    routing(),
    PulsingCircleDemo(),
    myanimation(),
    updating(),
    Text("three"),
  ];

  Widget build(BuildContext contest){
    return Scaffold(
      body: _items[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.red,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Lifecycle"),
          BottomNavigationBarItem(icon: Icon(Icons.check_box),label: "Container"),
          BottomNavigationBarItem(icon: Icon(Icons.table_rows),label: "Row&Column"),
          BottomNavigationBarItem(icon: Icon(Icons.perm_identity),label: "Intraction"),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt,),label: "List view"),
          BottomNavigationBarItem(icon: Icon(Icons.route),label: "Routing"),
          BottomNavigationBarItem(icon: Icon(Icons.circle,),label:"circle"),
          BottomNavigationBarItem(icon: Icon(Icons.circle_outlined),label:"animation"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "three"),
        ],
        onTap: (i){
          setState((){
            _index = i;
          });
        },
      ),
    );
  }
}