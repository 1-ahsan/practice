import 'package:flutter/material.dart';

class myanimation extends StatefulWidget{
  myanimation({super.key});

  @override
  State<myanimation> createState() => _myAnimationStates();
}

class _myAnimationStates extends State<myanimation> with SingleTickerProviderStateMixin {

  late AnimationController  _controller;
  late Animation<double> _size;
  late Animation<Color?> _color;

  void initState(){
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _size = Tween<double>(
      begin: 10,
      end: 300,
    ).animate(_controller);

    _color = ColorTween(
      begin: Colors.yellow,
      end: Colors.green,
    ).animate(_controller);

    _controller.repeat(reverse: true);


  }
  @override
  void dispose(){
    super.dispose();
    _controller.dispose();
  }

  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(_controller.isAnimating){
              _controller.stop();
            }
            else {
              _controller.repeat(reverse: true);
            }

          },
          child: Icon(Icons.play_circle),
      ),
      body: Center(
        child: AnimatedBuilder(
            animation: _controller,
            builder: (context,child){
              return Container(
                width: _size.value,
                height: _size.value,
                decoration: BoxDecoration(
                  color: _color.value,
                  shape: BoxShape.rectangle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 10,
                      color: _color.value!.withOpacity(0.5)
                    )
                  ]
                ),
                child: Center(
                  child: Text("data"),
                ),
              );
            }
        ),
      ),
    );
  }
}