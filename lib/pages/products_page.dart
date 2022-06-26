import 'package:comfort_place/widgets/search_bar.dart';
import 'package:comfort_place/widgets/tab_button_bar.dart';
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
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/user1.jpg'),
                // radius: 50,
              ),
              title: Text('Hello Tsania'),
              subtitle: Text('Baton Rouge (LA)'),
              trailing: Icon(Icons.menu),
            ),
            ListView(
              padding: const EdgeInsets.all(12),
              shrinkWrap: true,
              children: [
                Row(
                  children: const [
                    Expanded(child: SearchBar()),
                    SizedBox(width: 10),
                    Icon(Icons.more_rounded, size: 50),
                    SizedBox(width: 15),
                  ],
                ),
                const SizedBox(height: 10),
                const TabButtonBar(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Nearby Place'),
                    // const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text('Baton Rouge (LA)'),
                          SizedBox(width: 15),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
