import 'package:comfort_place/widgets/landing_background.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  final size = MediaQuery.of(context).;
    return Scaffold(
      body: Stack(
        children: [
          const LandingBackground(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: kToolbarHeight),
                Text(
                  'Find your best\nComfort Place',
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(.80),
                      ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Post your requirements and get highly relevant\nmatches with your need.',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(.80),
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
