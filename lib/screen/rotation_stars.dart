import 'package:flutter/cupertino.dart';

class StarsRotating extends StatefulWidget {
  const StarsRotating({super.key});

  @override
  StarsRotatingState createState() => StarsRotatingState();
}

class StarsRotatingState extends State<StarsRotating> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 15),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: RotationTransition(
          turns: _controller,
          child: Stack(
              children: [
                Image.asset('docs/assets/star.png', scale: 1.3),
                Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    bottom: 0,
                    child: Image.asset('docs/assets/small_star.png', scale: 1.3)
                )
            ]
          ),
        ),
    );
  }
}