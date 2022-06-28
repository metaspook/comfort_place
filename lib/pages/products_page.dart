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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const UserAppBar(),
              const SizedBox(height: 10),
              const SearchBar(),
              const SizedBox(height: 10),
              const TabButtonBar(),
              const SizedBox(height: 15),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    NearbyPlaceBar(),
                    NearbyPlaceBar(),
                  ],
                ),
              ),
            ],
          ),
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
