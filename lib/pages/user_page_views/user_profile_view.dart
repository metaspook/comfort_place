import 'package:flutter/material.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 300),
        Text(
          'Profile',
          style: Theme.of(context).textTheme.headline2,
        ),
      ],
    );
  }
}
