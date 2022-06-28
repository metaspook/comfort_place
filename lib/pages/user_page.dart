import 'package:comfort_place/controllers/controllers.dart';
import 'package:comfort_place/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentUserView = context.watch<BottomNavController>().currentView;
    return Scaffold(
      body: SafeArea(
        //  main column.
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              const UserAppBar(),
              currentUserView,
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
