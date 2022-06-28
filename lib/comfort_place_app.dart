import 'package:comfort_place/controllers/controllers.dart';
import 'package:comfort_place/pages/landing_page.dart';
import 'package:comfort_place/pages/user_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ComfortPlaceApp extends StatelessWidget {
  const ComfortPlaceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSignedIn = context.watch<AuthController>().isSignedIn;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isSignedIn ? const UserPage() : const LandingPage(),
    );
  }
}
