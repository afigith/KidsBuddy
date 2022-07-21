import 'package:flutter/material.dart';

class AppNameContainer extends StatelessWidget {
  const AppNameContainer({
    Key? key,
    required this.routeName,
    required this.appName,
  }) : super(key: key);

  final String routeName;
  final String appName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Text(
            'KidsBuddy $appName',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
