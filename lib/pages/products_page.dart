import 'package:comfort_place/widgets/nearby_place_bar.dart';
import 'package:comfort_place/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  final size = MediaQuery.of(context).;
    return Scaffold(
      body: SafeArea(
        //  main column.
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const UserAppBar(),
            const SizedBox(height: 10),
            const UserSearchBar(),
            const SizedBox(height: 10),
            const TabButtonBar(),
            const SizedBox(height: 15),
            Expanded(
              child: ListView(
                shrinkWrap: true, // 1st add
                physics: const BouncingScrollPhysics(),
                children: const [
                  NearbyPlaceBar(),
                  NearbyPlaceBar(),
                ],
              ),
            ),
            // FutureBuilder<List<Product>>(
            //   future: fetchProducts(),
            //   // initialData: InitialData,
            //   builder: (context, snapshot) {
            //     if (snapshot.hasData) {
            //       print(snapshot.data!.first.id);
            //       // return ProductCarousel(snapshot.data!);
            //       return Expanded(
            //         child: ListView.builder(
            //           physics: const BouncingScrollPhysics(),
            //           // itemExtent: 50,
            //           scrollDirection: Axis.horizontal,
            //           shrinkWrap: true,
            //           itemCount: snapshot.data!.length,
            //           itemBuilder: (context, index) {
            //             return Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: ClipRRect(
            //                 borderRadius: BorderRadius.circular(15),
            //                 child: CachedNetworkImage(
            //                     fit: BoxFit.cover,
            //                     height: 100,
            //                     width: 200,
            //                     imageUrl: snapshot.data![index].imageUrl),
            //               ),
            //             );
            //           },
            //         ),
            //       );
            //     }

            //     return const CircularProgressIndicator();
            //   },
            // ),
            // FutureBuilder<List<Product>>(
            //   future: fetchProducts(),
            //   // initialData: InitialData,
            //   builder: (context, snapshot) {
            //     if (snapshot.hasData) {
            //       print(snapshot.data!.first.id);
            //       // return ProductCarousel(snapshot.data!);
            //       return Expanded(
            //         child: ListView.builder(
            //           physics: const BouncingScrollPhysics(),
            //           // itemExtent: 50,
            //           scrollDirection: Axis.horizontal,
            //           shrinkWrap: true,
            //           itemCount: snapshot.data!.length,
            //           itemBuilder: (context, index) {
            //             return Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: ClipRRect(
            //                 borderRadius: BorderRadius.circular(15),
            //                 child: CachedNetworkImage(
            //                     fit: BoxFit.cover,
            //                     height: 100,
            //                     width: 200,
            //                     imageUrl: snapshot.data![index].imageUrl),
            //               ),
            //             );
            //           },
            //         ),
            //       );
            //     }

            //     return const CircularProgressIndicator();
            //   },
            // ),
            // const SizedBox(height: 100),
          ],
        ),
      ),
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
    );
  }
}
