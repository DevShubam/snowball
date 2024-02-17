import 'package:flutter/material.dart';

void main() {
  runApp(Snowball());
}

class Snowball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snowball',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snowball'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Hello! [Name]',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Networth',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Your Budgets'),
              onTap: () {
                // Code for what happens when the button is pressed goes here
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Your Investments'),
              onTap: () {
                // Code for what happens when the button is pressed goes here
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('AI'),
              onTap: () {
                // Code for what happens when the button is pressed goes here
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Account'),
              onTap: () {
                // Code for what happens when the button is pressed goes here
                // ...
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
