import 'package:flutter/material.dart';

class TravelMenuBar extends StatefulWidget{
  const TravelMenuBar({super.key});

  @override
  State<TravelMenuBar> createState() => _TravelMenuBarState();
}

class _TravelMenuBarState extends State<TravelMenuBar>{

  int _selectedIndex = 0;

  final List<Map<String,dynamic>> _menuItems =[
    {'icon': Icons.bed, 'label': 'Stays'},
    {'icon': Icons.directions_car, 'label': 'Car rental'},
    {'icon': Icons.local_taxi, 'label': 'Taxi'},
    {'icon': Icons.attractions, 'label': 'Attractions'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_,__) => SizedBox(width: 8,),
      itemCount: _menuItems.length,
      itemBuilder: (context,index){
        final item = _menuItems[index];
        final isSelected = _selectedIndex == index;
        return GestureDetector(
          onTap: (){
            setState(() {

            });
          },
        );
      },
    );
  }
}