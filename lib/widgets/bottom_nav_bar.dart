import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border), label: 'Favorite'),
        BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined), label: 'Message'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded), label: 'Profile'),
      ],
    );
  }
}
