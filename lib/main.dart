import 'package:flutter/material.dart';

void main() {
  runApp(const Snowball());
}

class Snowball extends StatelessWidget {
  const Snowball({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snowball',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snowball'),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Hello! [Name]', // Replace [Name] with the user's name
              style: TextStyle(fontSize: 24),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Your Current Networth: [Networth] \n Your networth is [Up/Down] by [Amount] from 30 days ago ', // Replace [Networth] with $networth variable
              // Replace [Up/Down] with 'up' or 'down' and [Amount] with the amount, using if else statements with variables

              /* if (up) {
                'Your networth is up by $amount from 30 days ago'
              } else {
                'Your networth is down by $amount from 30 days ago'
              }
              */

              style: TextStyle(fontSize: 24), 
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, 
          children: [ 
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: const Text('Your Budgets'),
              onTap: () {
                // Code for what happens when the button is pressed goes here
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Your Investments'),
              onTap: () {
                // Code for what happens when the button is pressed goes here
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('AI'),
              onTap: () {
                // Code for what happens when the button is pressed goes here
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Account'),
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
