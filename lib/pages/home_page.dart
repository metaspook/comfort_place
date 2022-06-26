import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  final size = MediaQuery.of(context).;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFFFCD1B7),
              Color(0xFFBFE0E8),
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: kToolbarHeight),
            Text(
              'Find your best\nComfort Place',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline3,
            ),
            const Text(
                'Post your requirements and get highly relevant\nmatches with your need.'),
            Image.asset(
              'assets/images/home_splash.png',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),

      // Column(
      //   children: [
      //     const SizedBox(height: kToolbarHeight),
      //     Text(
      //       'Find your best\nComfort Place',
      //       textAlign: TextAlign.center,
      //       style: Theme.of(context).textTheme.headline3,
      //     ),
      //     const Text(
      //         'Post your requirements and get highly relevant\nmatches with your need.'),
      //   ],
      // ),
    );
  }
}
