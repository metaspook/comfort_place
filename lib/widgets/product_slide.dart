import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductCarousel extends StatelessWidget {
  const ProductCarousel(this.imagePaths, {Key? key}) : super(key: key);
  final List<String> imagePaths;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSlides = imagePaths
        .map(
          (item) => Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                width: 250,
                imageUrl: 'https://i.picsum.photos/id/244/200/300.jpg',
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator.adaptive(
                        value: downloadProgress.progress),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
        )
        .toList(growable: false);

    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: .65,
        aspectRatio: 1.5,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        // initialPage: imagePaths.indexWhere((element) => element.isPrimary),
      ),
      items: imageSlides,
    );
  }
}
