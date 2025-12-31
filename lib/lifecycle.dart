import 'package:flutter/material.dart';


class lifecycle extends StatefulWidget{
  lifecycle({super.key});

  State<lifecycle> createState() => _lifecycleStates();
}

class _lifecycleStates extends State<lifecycle>{

  late TextEditingController controller ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose(){
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: "Enter your text",
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}