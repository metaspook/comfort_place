import 'package:comfort_place/widgets/product_slide.dart';
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
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Nearby Place',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                    // const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text(
                            'View All',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17.5),
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                    ),
                  ],
                ),
                const ProductCarousel([
                  'https://i.picsum.photos/id/244/200/300.jpg?hmac=wik1JUmLjSI1ujhC7YXckSJhpxTId-Ul5HF5mcALqC8'
                ])
              ],
            ),
          ],
        ),
      ),
    );
  }
}
