import 'package:flutter/material.dart';
import 'package:kidsbuddy/common.strings.dart';
import 'package:kidsbuddy/widgets/back.widget.dart';

import '../widgets/app.store.widget.dart';
import '../widgets/app.title.widget.dart';
import '../widgets/play.store.widget.dart';
import '../widgets/web.app.widget.dart';

class SmileyDetailsScreen extends StatelessWidget {
  const SmileyDetailsScreen({Key? key}) : super(key: key);
  static const routeName = "/Smiley";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              const BackWidget(),
              const SizedBox(height: 30),
              const AppTitleWidget(title: 'Smiley'),
              const SizedBox(height: 16),
              Row(
                children: [
                  PlayStoreWidget(url: smileyPlayStoreUrl),
                  const SizedBox(width: 10),
                  AppStoreWidget(url: smileyAppStoreUrl),
                ],
              ),
              const SizedBox(height: 10),

              WebAppWidgtet(url: smileyWebUrl),
              const SizedBox(height: 16),
              Text(smileyDetails)
              // HtmlWidget(smileyDetails)
            ],
          ),
        ),
      ),
    );
  }
}
