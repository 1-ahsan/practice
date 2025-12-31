import 'package:flutter/material.dart';
import 'page2.dart';

class page extends StatelessWidget{
  page({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.black, child: Text("Title")),
        centerTitle: true,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
        ),
        actions: <Widget>[
          Icon(Icons.notification_add),
          SizedBox(width: 10,),
        ],

      ),
      body: page2(),
    );
  }
}
