import 'package:flutter/material.dart';

class BackWidget extends StatelessWidget {
  const BackWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Row(
        children: const [
          Icon(Icons.arrow_back_ios_new),
          SizedBox(width: 10),
          Text(
            "Back",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
