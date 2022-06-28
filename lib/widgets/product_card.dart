import 'package:cached_network_image/cached_network_image.dart';
import 'package:comfort_place/models/product.dart';
import 'package:comfort_place/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(this.product, {Key? key}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          CachedNetworkImage(
            fit: BoxFit.cover,
            height: size.height * .5,
            width: size.width * .65,
            imageUrl: product.imageUrl,
          ),
          Positioned(
            top: 20,
            left: 20,
            child: RatingBadge(product.rating),
          ),
          Positioned(
            top: 7.5,
            right: 7.5,
            child: IconButton(
              onPressed: () {
                print('Favorite button pressed');
              },
              icon: const Icon(FontAwesomeIcons.solidHeart),
              iconSize: 17.5,
              color: const Color(0xFFFC6465),
            ),
          ),
        ],
      ),
    );
  }
}
