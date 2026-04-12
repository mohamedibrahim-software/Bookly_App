import 'package:bookly_app/features/splash/presentation/view/widget/SlidingAnimation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Lottie.asset(
            'assets/images/book blue (1).json',
            repeat: false,
            frameRate: FrameRate.max,
          ),
          SlidingAnimation(),
        ],
      ),
    );
  }
}
