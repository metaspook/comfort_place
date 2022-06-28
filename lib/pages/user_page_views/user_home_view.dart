import 'package:comfort_place/widgets/widgets.dart';
import 'package:flutter/material.dart';

class UserHomeView extends StatelessWidget {
  const UserHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 10),
          const SearchBar(),
          const SizedBox(height: 20),
          const TabButtonBar(),
          ViewAllButton(
            onPressed: () {},
            title: 'Nearby Place',
          ),
          const NearbyPlaceBar(),
          ViewAllButton(
            onPressed: () {},
            title: 'Recommendation',
          ),
          const NearbyPlaceBar(),
        ],
      ),
    );
  }
}
