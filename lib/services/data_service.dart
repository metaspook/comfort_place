import 'dart:convert';

import 'package:comfort_place/models/models.dart';
import 'package:http/http.dart' as http;

class DataService {
  DataService._();

  ///  DataService singleton class.
  factory DataService() => DataService._();
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
}
