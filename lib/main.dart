import 'package:flutter/material.dart';
import 'homepage.dart';
import 'budget_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance App',
      initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),
        '/budget': (context) => BudgetPage(),
      },
    );
  }
}