import 'package:flutter/material.dart';
import 'fig1.dart';

class routing extends StatelessWidget{
  routing({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => fig1()));
            },
            child: Text("Press me."),
        ),
      ),
    );
  }
}