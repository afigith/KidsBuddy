import 'package:flutter/material.dart';

class DetailsText extends StatelessWidget {
  const DetailsText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Enhance Children’s Talent Through Daily Fun Activities. An Enjoyable Learning Experience For Children and help the parent to understand their child's strengths.",
      style: TextStyle(
        color: Color.fromARGB(255, 29, 98, 131),
        fontFamily: 'Montserrat-Regular',
        fontSize: 15,
      ),
    );
  }
}
