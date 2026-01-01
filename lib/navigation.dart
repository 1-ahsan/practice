import 'package:flutter/material.dart';
import 'fig1.dart';
import 'RegisterPage.dart';
import 'login.dart';

class routing extends StatelessWidget{
  routing({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => register()));
              },
              child: Text("Press me."),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text("Press me."),
            ),
          ],
        )
      ),
    );
  }
}