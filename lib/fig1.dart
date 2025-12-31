import 'package:flutter/material.dart';
import 'appbarNav.dart';

class fig1 extends StatefulWidget{
  fig1({super.key});

  State<fig1> createState() => _fig1states();
}

class _fig1states extends State<fig1>{

  // TextEditingController

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)
        ),
        title: Title(color: Colors.white, child: Text("Booking App")),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/');
            },
            icon: Icon(
              Icons.notification_add,
            ),
          ),
        ],
      ),
      body: Text("data"),
    );
  }
}