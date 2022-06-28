import 'package:flutter/material.dart';

class ViewAllButton extends StatelessWidget {
  const ViewAllButton({
    required this.title,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        // const Spacer(),
        TextButton(
          onPressed: onPressed,
          child: Row(
            children: const [
              Text(
                'View All',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17.5),
              ),
              SizedBox(width: 15),
            ],
          ),
        ),
      ],
    );
  }
}
