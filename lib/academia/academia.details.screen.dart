import 'package:flutter/material.dart';
import 'package:kidsbuddy/common.strings.dart';
import 'package:kidsbuddy/widgets/app.store.widget.dart';
import 'package:kidsbuddy/widgets/back.widget.dart';
import 'package:kidsbuddy/widgets/play.store.widget.dart';

import '../widgets/app.title.widget.dart';

class AcademiaDetailsScreen extends StatelessWidget {
  const AcademiaDetailsScreen({Key? key}) : super(key: key);

  static const routeName = "/Academia";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              const BackWidget(),
              const SizedBox(height: 30),
              const AppTitleWidget(title: 'Academia'),

              const SizedBox(height: 16),
              Row(
                children: [
                  PlayStoreWidget(
                    url: academiaPlayStoreUrl,
                  ),
                  const SizedBox(width: 10),
                  AppStoreWidget(
                    url: academiaAppStoreUrl,
                  ),
                ],
              ),
              const SizedBox(height: 10),

              const SizedBox(height: 16),
              Text(academiaDetails)
              // HtmlWidget(smileyDetails)
            ],
          ),
        ),
      ),
    );
  }
}
