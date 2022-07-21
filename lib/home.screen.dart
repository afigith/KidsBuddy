import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kidsbuddy/academia/academia.details.screen.dart';
import 'package:kidsbuddy/common.strings.dart';
import 'package:kidsbuddy/gen/assets.gen.dart';
import 'package:kidsbuddy/smiley/smiley.details.screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 4,
        backgroundColor: Colors.green,
        onPressed: () async {
          await canLaunchUrl(Uri.parse(whatsappUrl))
              ? launchUrl(Uri.parse(whatsappUrl))
              : Fluttertoast.showToast(
                  msg: "Whatsapp Not Found",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
        },
        child: const Icon(
          FontAwesomeIcons.whatsapp,
          size: 30,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 200),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 61, 131, 163),
                  ),
                  shape: BoxShape.circle,
                ),
                child: Assets.appIcon.image(
                  height: 150,
                ),
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
            const Text(
              "Enhance Children’s Talent Through Daily Fun Activities. An Enjoyable Learning Experience For Children and help the parent to understand their child's strengths.",
              style: TextStyle(
                color: Color.fromARGB(255, 29, 98, 131),
                fontFamily: 'Montserrat-Regular',
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SmileyDetailsScreen(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      child: Text(
                        'KidsBuddy Smiley',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SmileyDetailsScreen(),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.arrow_forward,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const AcademiaDetailsScreen(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      child: Text(
                        'KidsBuddy Academia',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const AcademiaDetailsScreen(),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.arrow_forward,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
