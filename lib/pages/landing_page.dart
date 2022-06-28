import 'package:comfort_place/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  final size = MediaQuery.of(context).;
    return Scaffold(
      body: Stack(
        children: [
          const LandingBackground(),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: kToolbarHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                // SizedBox(height: kToolbarHeight),
                LandingTitleBar(),
                LandingAuthBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
