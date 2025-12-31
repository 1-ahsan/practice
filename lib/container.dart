import 'package:flutter/material.dart';

class contain extends StatelessWidget{
  contain({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(3),
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(
            color: Colors.yellow,
            width: 3,
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 10),
              color: Colors.white.withOpacity(0.3),
              blurRadius: 15,
            ),
          ]
        ),
        child: Text(
          "Ahsan Abbas",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}