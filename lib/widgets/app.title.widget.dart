import 'package:flutter/material.dart';

class AppTitleWidget extends StatelessWidget {
  const AppTitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      'KidsBuddy $title',
      style: const TextStyle(
        color: Color.fromARGB(255, 61, 131, 163),
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
