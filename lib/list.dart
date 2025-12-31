import 'package:flutter/material.dart';

class listing extends StatelessWidget{
  listing({super.key});

  List<String> list = List.generate(20, (index) => "item #${index}");

  Widget build(BuildContext context){
    return Column(
      children: [
        SizedBox(height: 100,),
        Text("list",style: TextStyle(fontSize: 22),),
        SizedBox(height: 10,),

        // list builder
        Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (context,i){
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      title: Text(list[i]),
                      subtitle: Text("discription........"),
                      onTap: (){
                        print("I am taped");
                      },
                    ),
                  );
                }
            ),
        )
      ],
    );
  }
}