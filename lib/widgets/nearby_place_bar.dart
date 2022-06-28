import 'package:cached_network_image/cached_network_image.dart';
import 'package:comfort_place/models/models.dart';
import 'package:comfort_place/services/data_service.dart';
import 'package:flutter/material.dart';

class NearbyPlaceBar extends StatelessWidget {
  const NearbyPlaceBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 17.5),
                  ),
                  SizedBox(width: 15),
                ],
              ),
            ),
          ],
        ),
        FutureBuilder<List<Product>>(
          future: DataService().fetchProducts(),
          // initialData: InitialData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print(snapshot.data!.first.id);
              // return ProductCarousel(snapshot.data!);
              return LimitedBox(
                maxHeight: 300,
                maxWidth: 300,
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
                            height: 300,
                            width: 200,
                            imageUrl: snapshot.data![index].imageUrl),
                      ),
                    );
                  },
                ),
              );
            }
            return const CircularProgressIndicator();
          },
        )
      ],
    );
  }
}
