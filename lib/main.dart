import 'package:flutter/material.dart';
import 'package:flutter_fooderlich_app/fooderlich_theme.dart';
import 'package:flutter_fooderlich_app/home.dart';

void main() {
  runApp(Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      theme: theme,
      title: "Fooderlich",
      home: const Home(),
    );
  }
}
