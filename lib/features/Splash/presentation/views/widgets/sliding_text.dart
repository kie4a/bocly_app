
import 'package:flutter/material.dart';

class slidingtext extends StatelessWidget {
  const slidingtext({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
    
    animation: slidingAnimation,
      builder: (context,_) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            textAlign: TextAlign.center,
        
            "Read free Books ",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        );
      }
    );
  }
}
