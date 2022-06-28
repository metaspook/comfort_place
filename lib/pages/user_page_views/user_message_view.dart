import 'package:flutter/material.dart';

class UserMessageView extends StatelessWidget {
  const UserMessageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 300),
        Text(
          'Message',
          style: Theme.of(context).textTheme.headline2,
        ),
      ],
    );
  }
}
