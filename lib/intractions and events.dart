import 'package:flutter/material.dart';

class intractions extends StatefulWidget{
  intractions({super.key});

  State<intractions> createState() => _intractionsStates();
}



class _intractionsStates extends State<intractions>{

  // onPressed
  // ☐ FloatingActionButton
  // ☐ IconButton
  // ☐ ElevatedButton
  // ☐ Gesture basics

  int index =0;
  List<Widget> list = [
    Icon(Icons.wordpress,size: 32,),
    Text("single"),
    Text("double"),
    Text("long"),
  ];



  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){

          },
        label: Text("button"),
        icon: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FloatingActionButton(
                onPressed: (){

                },
              backgroundColor: Colors.blue,
              child: Text("Press me"),
            ),
            ElevatedButton(
                onPressed: (){

                }, 
                child: Text("Elevated Button"),
            ),
            IconButton(
                onPressed: (){
                  print("object");
                }, 
                icon: Icon(Icons.add)
            ),
            SizedBox(height: 100,),
            Text("Gesture Detector"),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                print("single press");
                setState((){
                  index =1;
                });
              },
              onDoubleTap: (){

                print("double press");
                setState((){
                  index =2;
                });
              },
              onLongPress: (){

                print("Long press");
                setState(() {
                  index = 3;
                });
              },
              onPanUpdate: (d){
                print("drag ${d.delta}");
              },
              child: list[index],
            )
          ],
        ),
      ),
    );
  }
}