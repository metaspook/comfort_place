import 'package:flutter/material.dart';

class RatingBadge extends StatelessWidget {
  const RatingBadge(this.rating, {Key? key}) : super(key: key);
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          height: 25,
          width: 55,
          decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: const [
                Icon(
                  Icons.star_outlined,
                  size: 17.5,
                  color: Color(0xFFFFA031),
                ),
                SizedBox(height: 2.5),
              ],
            ),
            const SizedBox(width: 5),
            Text(
              rating,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
