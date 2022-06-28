import 'package:comfort_place/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserAppBar extends StatelessWidget {
  const UserAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/user1.jpg'),
        // radius: 50,
      ),
      title: const Text('Hello Tsania'),
      subtitle: GestureDetector(
        onTap: () {
          print('user log menu pressed');
        },
        child: Row(
          children: const [
            Text(
              'Baton Rouge (LA)',
              style: TextStyle(color: Color(0xFF7BB3C6)),
            ),
            Icon(Icons.keyboard_arrow_down_rounded, color: Color(0xFF7BB3C6))
          ],
        ),
      ),
      trailing: PopupMenuButton(
        icon: const Icon(
          Icons.menu,
          color: Colors.black87,
        ),
        itemBuilder: (context) => [
          PopupMenuItem(
            onTap: () => context.read<AuthController>().signedOut(),
            child: Text(
              'Logout',
              style: Theme.of(context).textTheme.headline6,
            ),
          )
        ],
      ),
    );
  }
}
