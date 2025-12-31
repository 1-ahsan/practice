import 'package:flutter/material.dart';

class updating extends StatefulWidget{
  updating({super.key});

  @override
  State<updating> createState() => _updatingState();
}

class _updatingState extends State<updating>{

  int _var =0;

  Widget _fun(){
    return TextButton(
        onPressed: (){
          setState((){
            _var++;
          });
        },
        child: Text("${_var}")
    );
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: _fun(),
      ),
    );
  }
}