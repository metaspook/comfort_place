import 'package:flutter/material.dart';

class LandingBackground extends StatelessWidget {
  const LandingBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFFFCD1B7),
                Color(0xFFBFE0E8),
              ],
            ),
          ),
        ),
        Positioned(
          right: .5,
          left: .5,
          child: Image.asset(
            'assets/images/home_splash.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
