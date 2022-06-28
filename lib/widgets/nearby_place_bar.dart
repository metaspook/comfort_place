import 'package:comfort_place/models/models.dart';
import 'package:comfort_place/services/data_service.dart';
import 'package:comfort_place/widgets/widgets.dart';
import 'package:flutter/material.dart';

class NearbyPlaceBar extends StatelessWidget {
  const NearbyPlaceBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder<List<Product>>(
          future: DataService().fetchProducts(),
          // initialData: InitialData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return LimitedBox(
                maxHeight: 400,
                // maxWidth: 200,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ProductCard(snapshot.data![index]),
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
