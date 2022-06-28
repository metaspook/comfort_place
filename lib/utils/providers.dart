import 'package:comfort_place/controllers/controllers.dart';
import 'package:provider/provider.dart';

class Providers {
  Providers._();

  ///  Providers singleton class.
  factory Providers() => Providers._();

  final userProviders = [
    ChangeNotifierProvider<AuthController>(
      create: (context) => AuthController(),
    ),
    ChangeNotifierProvider<BottomNavController>(
      create: (context) => BottomNavController(),
    ),
  ];
}
