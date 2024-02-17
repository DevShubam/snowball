import 'package:flutter/material.dart';
import 'homepage.dart'; 

void main() {
  runApp(const SnowballApp());
}

class SnowballApp extends StatelessWidget {
  const SnowballApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snowball',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(), // Reference to HomePage defined in homepage.dart
    );
  }
}
