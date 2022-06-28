import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:comfort_place/models/product.dart';
import 'package:flutter/material.dart';

class ProductCarousel extends StatelessWidget {
  const ProductCarousel(this.detailImages, {Key? key}) : super(key: key);
  final List<Product> detailImages;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSlides = detailImages
        .map(
          (item) => Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                width: 250,
                imageUrl: item.imageUrl,
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
        viewportFraction: .715,
        aspectRatio: 1,
        // enlargeCenterPage: true,
        // disableCenter: true,
        enableInfiniteScroll: false,
        // initialPage: imagePaths.indexWhere((element) => element.isPrimary),
      ),
      items: imageSlides,
    );
  }
}
