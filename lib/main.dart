import 'package:comfort_place/comfort_place_app.dart';
import 'package:comfort_place/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: Providers().userProviders,
      child: const ComfortPlaceApp(),
    ),
  );
}
