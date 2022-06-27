import 'package:flutter/material.dart';

class LandingTitleBar extends StatelessWidget {
  const LandingTitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(.80),
              ),
        ),
      ],
    );
  }
}
