import 'package:flutter/material.dart';
import 'package:kidsbuddy/academia/academia.details.screen.dart';
import 'package:kidsbuddy/home.screen.dart';
import 'package:kidsbuddy/smiley/smiley.details.screen.dart';

// flutter packages pub run build_runner build
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KidsBuddy',
      routes: routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

final routes = <String, WidgetBuilder>{
  AcademiaDetailsScreen.routeName: ((context) => const AcademiaDetailsScreen()),
  SmileyDetailsScreen.routeName: ((context) => const SmileyDetailsScreen()),
};
