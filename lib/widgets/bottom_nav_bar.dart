import 'package:comfort_place/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: context.watch<BottomNavController>().currentIndex,
      onTap: (newIndex) =>
          context.read<BottomNavController>().setIndex(newIndex),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Favorite',
          icon: Icon(Icons.favorite_border),
        ),
        BottomNavigationBarItem(
          label: 'Message',
          icon: Icon(Icons.message_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: Icon(Icons.person_outline_rounded),
        ),
      ],
    );
  }
}
