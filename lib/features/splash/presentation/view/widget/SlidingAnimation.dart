import 'package:bookly_app/core/utils/Approuter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlidingAnimation extends StatefulWidget {
  const SlidingAnimation({super.key});

  @override
  State<SlidingAnimation> createState() => _SlidingAnimationState();
}

class _SlidingAnimationState extends State<SlidingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationcontroller;
  late Animation<Offset> slidinganimation;
  @override
  void initState() {
    super.initState();
    initanimation();
    diraction();
  }

  @override
  void dispose() {
    animationcontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidinganimation,
      builder: (context, child) {
        return SlideTransition(
          position: slidinganimation,
          child: const Text(
            'Read Free Books',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        );
      },
    );
  }

  void initanimation() {
    animationcontroller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    slidinganimation = Tween<Offset>(begin: Offset(0, 5), end: Offset.zero)
        .animate(
          CurvedAnimation(parent: animationcontroller, curve: Curves.easeOut),
        );
    animationcontroller.forward();
  }

  void diraction() async {
    Future.delayed(Duration(milliseconds: 2500), () {
      GoRouter.of(context).pushReplacement(Approuter.onbording);
    });
  }
}
