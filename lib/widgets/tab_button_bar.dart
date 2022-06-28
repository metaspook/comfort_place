import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabButtonBar extends StatelessWidget {
  const TabButtonBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.5),
            ),
            elevation: 35,
            onPrimary: Colors.grey.shade600,
            primary: Theme.of(context).scaffoldBackgroundColor,
            shadowColor: Colors.black54,
          ),
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.houseUser,
            color: Colors.deepOrange,
            size: 15,
          ),
          label: const Text('House'),
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.5),
            ),
            elevation: 10,
            onPrimary: Colors.grey.shade400,
            primary: Theme.of(context).scaffoldBackgroundColor,
            shadowColor: Colors.black26,
          ),
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.building,
            color: Colors.blue.withOpacity(.5),
            size: 15,
          ),
          label: const Text('Apartment'),
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.5),
            ),
            elevation: 10,
            onPrimary: Colors.grey.shade400,
            primary: Theme.of(context).scaffoldBackgroundColor,
            shadowColor: Colors.black26,
          ),
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.hotel,
            color: Colors.pink.withOpacity(.5),
            size: 15,
          ),
          label: const Text('Hotel'),
        ),
        const SizedBox(width: 0),
      ],
    );
  }
}
