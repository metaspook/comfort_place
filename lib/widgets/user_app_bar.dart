import 'package:flutter/material.dart';

class UserAppBar extends StatelessWidget {
  const UserAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/user1.jpg'),
        // radius: 50,
      ),
      title: Text('Hello Tsania'),
      subtitle: Text('Baton Rouge (LA)'),
      trailing: Icon(Icons.menu),
    );
  }
}
