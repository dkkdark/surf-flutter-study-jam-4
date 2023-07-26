import 'package:flutter/material.dart';

class ShadowWidget extends StatefulWidget {
  const ShadowWidget({super.key});

  @override
  ShadowWidgetState createState() => ShadowWidgetState();
}

class ShadowWidgetState extends State<ShadowWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Opacity(
            opacity: _animation.value,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    shape: BoxShape.circle
                ),
              )
          ),
    );
  }
}