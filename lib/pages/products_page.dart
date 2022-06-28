import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:comfort_place/models/product.dart';
import 'package:comfort_place/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
            const UserAppBar(),
            const SizedBox(height: 10),
            const UserSearchBar(),
            const SizedBox(height: 10),
            const TabButtonBar(),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Nearby Place',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
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
            FutureBuilder<List<Product>>(
              future: fetchProducts(),
              // initialData: InitialData,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  print(snapshot.data!.first.id);
                  // return ProductCarousel(snapshot.data!);
                  return Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      // itemExtent: 50,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                height: 100,
                                width: 200,
                                imageUrl: snapshot.data![index].imageUrl),
                          ),
                        );
                        // Container(
                        //   margin: const EdgeInsets.all(8),
                        //   decoration: BoxDecoration(
                        //       image: DecorationImage(
                        //         image: CachedNetworkImageProvider(
                        //           snapshot.data![index].imageUrl,
                        //           maxHeight: 100,
                        //           maxWidth: 100,
                        //           // imageUrl: snapshot.data![index].imageUrl),
                        //         ),
                        //       ),
                        //       borderRadius: BorderRadius.circular(8)),
                        //   // child: CachedNetworkImage(
                        //   //     height: 100,
                        //   //     width: 100,
                        //   //     imageUrl: snapshot.data![index].imageUrl),
                        // );
                      },
                    ),
                  );
                }

                return const CircularProgressIndicator();
              },
            ),
            const SizedBox(height: 100),
          ],
        ),
        // Column(
        // children: [
        // const ListTile(
        //   leading: CircleAvatar(
        //     backgroundImage: AssetImage('assets/images/user1.jpg'),
        //     // radius: 50,
        //   ),
        //   title: Text('Hello Tsania'),
        //   subtitle: Text('Baton Rouge (LA)'),
        //   trailing: Icon(Icons.menu),
        // ),
        // ListView(
        //   padding: const EdgeInsets.all(12),
        //   shrinkWrap: true,
        //   children: [
        //     Row(
        //       children: [
        //         const Expanded(child: SearchBar()),
        //         const SizedBox(width: 10),
        //         Container(
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(5),
        //             color: const Color(0xFF5D4229),
        //           ),
        //           padding: const EdgeInsets.all(7.5),
        //           child: Icon(FontAwesomeIcons.bars,
        //               size: 27.5,
        //               color: Theme.of(context).scaffoldBackgroundColor),
        //         ),
        //         const SizedBox(width: 15),
        //       ],
        //     ),
        //     const SizedBox(height: 10),
        //     const TabButtonBar(),
        //     const SizedBox(height: 15),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         const Text(
        //           'Nearby Place',
        //           style:
        //               TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        //         ),
        //         // const Spacer(),
        //         TextButton(
        //           onPressed: () {},
        //           child: Row(
        //             children: const [
        //               Text(
        //                 'View All',
        //                 style: TextStyle(
        //                     fontWeight: FontWeight.w500, fontSize: 17.5),
        //               ),
        //               SizedBox(width: 15),
        //             ],
        //           ),
        //         ),
        //       ],
        //     ),

        //     // Image.network('https://picsum.photos/200/300'),
        //   ],
        // ),

        // ],
        // ),
      ),
    );
  }
}

Future<List<Product>> fetchProducts() async {
  final response =
      await http.get(Uri.parse('http://194.195.244.141/DemoDataFlutterTest'));

  if (response.statusCode == 200) {
    final products = jsonDecode(response.body);
    return [for (Map<String, dynamic> e in products) Product.fromJson(e)];
  } else {
    throw Exception(
        "[${response.statusCode}] Couldn't fetch the api response!");
  }
}
