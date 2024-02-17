import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String userName = 'User'; // TODO: Replace with actual user name
    final double networth = 10000; // TODO: Replace with actual net worth value
    final double changeAmount = 500; // TODO: Replace with actual change amount
    final bool isNetworthUp = true; // TODO: Determine if the net worth has gone up or down

    return Scaffold(
      appBar: AppBar(
        title: const Text('Snowball'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Hello! $userName', 
              style: const TextStyle(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Your Current Networth: $networth \n Your networth is ${isNetworthUp ? 'up' : 'down'} by $changeAmount from 30 days ago',
              style: const TextStyle(fontSize: 24),
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
                // TODO: Navigate to your budgets page
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Your Investments'),
              onTap: () {
                // TODO: Navigate to your investments page
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('AI'),
              onTap: () {
                // TODO: Navigate to your AI feature page
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Account'),
              onTap: () {
                // TODO: Navigate to your account page
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
