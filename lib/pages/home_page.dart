import 'package:comfort_place/widgets/landing_auth_bar.dart';
import 'package:comfort_place/widgets/widgets.dart';
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
