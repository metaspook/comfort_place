import 'package:comfort_place/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentIndex = context.watch<BottomNavController>().currentIndex;
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        SizedBox(
          height: 75,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (newIndex) =>
                context.read<BottomNavController>().setIndex(newIndex),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black38,
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
                label: '',
                icon: Icon(Icons.face),
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
          ),
        ),
        Positioned(
          top: 5,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xFFFCD1B7),
                      Color(0xFFBFE0E8),
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Icon(
                Icons.add,
                size: 30,
                color: Theme.of(context).scaffoldBackgroundColor,
              )
            ],
          ),
        )
      ],
    );
  }
}
