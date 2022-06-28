import 'package:comfort_place/controllers/controllers.dart';
import 'package:provider/provider.dart';

class Providers {
  Providers._();

  ///  Providers singleton class.
  factory Providers() => Providers._();

  final userProviders = [
    // ChangeNotifierProvider(create: (_) => BottomNavController()),
    ChangeNotifierProvider(create: (_) => AuthController()),
    // ChangeNotifierProvider(create: (_) => SearchController()),
    // StreamProvider<User?>.value(
    //   value: FirebaseAuth.instance.authStateChanges(),
    //   initialData: null,
    //   catchError: (context, object) {
    //     throw (object.toString());
    //   },
    // ),
  ];
}
