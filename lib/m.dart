import 'package:flutter/material.dart';
import 'page.dart';

void main(){
  runApp(const app());
}

class app extends StatelessWidget{
  const app({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "App",
      home: page(),
    );
  }

}
