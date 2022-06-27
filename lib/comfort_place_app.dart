import 'package:comfort_place/pages/products_page.dart';
import 'package:flutter/material.dart';

class ComfortPlaceApp extends StatelessWidget {
  const ComfortPlaceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductsPage(),
    );
  }
}
