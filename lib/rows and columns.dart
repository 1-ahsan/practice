import 'package:flutter/material.dart';

class rowColumn extends StatelessWidget{
  rowColumn({super.key});
  


  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Row 1: "),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                  ),
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start ,
                    children: [
                      Text("New Column"),
                      Text("New Column and row 2"),
                    ],
                  ),
                  // mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  // children: [
                  //   Text("New Column"),
                  //   Text("New Column and row 2"),
                  // ],
                )
              ],
            ),

            Row(
              children: [
                Text("Row 2: "),
              ],
            ),
            SizedBox(height: 50,),
            Center(
              child: Text("Centered text",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 100,),
            Text("List",style: TextStyle(fontSize: 22),),
            SizedBox(height: 10,),


            // list
            ListView(
              padding: EdgeInsets.all(4),
              shrinkWrap: true,
              children: const <Widget>[
                Text("one"),
                Text("Two"),
                Text("three"),
                Text("four"),
                Text("five"),
              ],
            ),


          ],
        ),
      ),
    );
  }
}