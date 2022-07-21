import 'package:flutter/material.dart';

class NextIcon extends StatelessWidget {
  const NextIcon({
    Key? key,
    required this.routeName,
  }) : super(key: key);
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: const Icon(
        Icons.arrow_forward,
      ),
    );
  }
}
