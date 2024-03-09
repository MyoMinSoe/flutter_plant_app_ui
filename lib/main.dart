import 'package:flutter/material.dart';
import 'package:flutter_plant_app_ui/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Plant UI App',
      home: Home(),
    );
  }
}
