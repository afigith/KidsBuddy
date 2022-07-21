import 'package:flutter/material.dart';
import 'package:kidsbuddy/academia/academia.details.screen.dart';
import 'package:kidsbuddy/gen/assets.gen.dart';
import 'package:kidsbuddy/smiley/smiley.details.screen.dart';
import 'package:kidsbuddy/widgets/whatsapp.button.dart';

import 'widgets/app.name.container.dart';
import 'widgets/details.text.dart';
import 'widgets/next.icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const WhatsappButton(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 200),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Assets.logo1.image(
                height: 150,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'KidsBuddy',
              style: TextStyle(
                fontFamily: 'Montserrat-Bold',
                color: Color.fromARGB(255, 61, 131, 163),
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 30),
            const DetailsText(),
            const SizedBox(height: 20),
            Row(
              children: const [
                AppNameContainer(
                  appName: 'Smiley',
                  routeName: SmileyDetailsScreen.routeName,
                ),
                SizedBox(width: 8),
                NextIcon(routeName: SmileyDetailsScreen.routeName)
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                AppNameContainer(
                  appName: 'Academia',
                  routeName: AcademiaDetailsScreen.routeName,
                ),
                SizedBox(width: 8),
                NextIcon(routeName: AcademiaDetailsScreen.routeName)
              ],
            )
          ],
        ),
      ),
    );
  }
}
