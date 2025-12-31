import 'package:flutter/material.dart';


class lifecycle extends StatefulWidget{
  lifecycle({super.key});

  State<lifecycle> createState() => _lifecycleStates();
}

class _lifecycleStates extends State<lifecycle>{

  late TextEditingController controller ;

  bool _ischeck = false;
  bool _listtile = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TextEditingController();
  }

  Widget _checkboxx(){
    return Checkbox(
        value: _ischeck,
        activeColor: Colors.blue,
        onChanged: (bool? value){
          setState(() {
            _ischeck = value!;
          });
        },
    );
  }

  Widget _checklist(){
   return CheckboxListTile(
     title: Text("What is 3+5?"),
       value: _listtile,
       onChanged: (bool? neww){
          setState((){
            _listtile = neww!;
          });
        }
   );
  }

  @override
  void dispose(){
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: "Enter your text",
              border: OutlineInputBorder(),
            ),
          ),
          _checkboxx(),
          _checklist(),
        ],
      ),
    );
  }
}