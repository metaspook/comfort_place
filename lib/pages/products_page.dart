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
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        alignment: Alignment.center,
                        height: kToolbarHeight * .75,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(5),
                          // gradient: LinearGradient(
                          //   begin: Alignment.topRight,
                          //   end: Alignment.bottomLeft,
                          //   colors: [
                          //     Color(0xFFFCD1B7),
                          //     Color(0xFFBFE0E8),
                          //   ],
                          // ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.grey.shade600,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Search here',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(Icons.more_rounded, size: 50),
                    const SizedBox(width: 15),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        elevation: 20,
                        onPrimary: Colors.grey.shade600,
                        primary: Theme.of(context).scaffoldBackgroundColor,
                        shadowColor: Colors.grey.shade200,
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.house_outlined,
                      ),
                      label: const Text('House'),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        elevation: 20,
                        onPrimary: Colors.grey.shade600,
                        primary: Theme.of(context).scaffoldBackgroundColor,
                        shadowColor: Colors.grey.shade200,
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.house_siding_sharp,
                      ),
                      label: const Text('Apartment'),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        elevation: 20,
                        onPrimary: Colors.grey.shade600,
                        primary: Theme.of(context).scaffoldBackgroundColor,
                        shadowColor: Colors.grey.shade200,
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.hotel,
                      ),
                      label: const Text('Hotel'),
                    ),
                    const SizedBox(width: 15),
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
