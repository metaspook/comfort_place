import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  final size = MediaQuery.of(context).;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined), label: 'Message'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded), label: 'Profile'),
          ]),
      body: Column(
        children: [
          ListTile(
            leading: Image.asset('assets/images/user1.jpg'),
            title: const Text(
                'Post your requirements and get highly relevant\nmatches with your need.'),
          ),
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFFCD1B7),
                  Color(0xFFBFE0E8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
