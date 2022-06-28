import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(12),
            alignment: Alignment.center,
            height: kToolbarHeight * .75,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey.shade600,
                ),
                const SizedBox(width: 5),
                Text(
                  'Search here',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.5),
            color: const Color(0xFF5D4229),
          ),
          padding: const EdgeInsets.all(7.5),
          child: Icon(FontAwesomeIcons.bars,
              size: 27.5, color: Theme.of(context).scaffoldBackgroundColor),
        ),
        const SizedBox(width: 15),
      ],
    );
  }
}
