import 'package:flutter/material.dart';

class PulsingCircleDemo extends StatefulWidget {
  const PulsingCircleDemo({super.key});

  @override
  // 1. Add the Mixin here
  State<PulsingCircleDemo> createState() => _PulsingCircleDemoState();
}

class _PulsingCircleDemoState extends State<PulsingCircleDemo>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _sizeAnimation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    // 2. Initialize the Controller
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    // 3. Define Tweens
    // Size changes from 100 to 300
    _sizeAnimation = Tween<double>(begin: 100.0, end: 300.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Color changes from Blue to Red
    _colorAnimation = ColorTween(begin: Colors.blue, end: Colors.red).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // 4. Start the animation (Repeating)
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    // 5. CRITICAL: Clean up controller
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Explicit Animation Demo")),
      body: Center(
        // 6. AnimatedBuilder listens to the controller
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Container(
              width: _sizeAnimation.value,
              height: _sizeAnimation.value,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _colorAnimation.value,
                  boxShadow: [
                    BoxShadow(
                      color: _colorAnimation.value!.withOpacity(0.5),
                      blurRadius: 20,
                      spreadRadius: 5,
                    )
                  ]
              ),
              alignment: Alignment.center,
              child: Text(
                "Pulse",
                style: TextStyle(
                  color: Colors.white,
                  // We can even animate text size based on the controller
                  fontSize: 16 + (_controller.value * 10),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller.isAnimating) {
            _controller.stop();
          } else {
            _controller.repeat(reverse: true);
          }
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}