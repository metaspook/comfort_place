import 'package:flutter/material.dart';

class UserFavoriteView extends StatelessWidget {
  const UserFavoriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 300),
        Text(
          'Favorite',
          style: Theme.of(context).textTheme.headline2,
        ),
      ],
    );
  }
}
