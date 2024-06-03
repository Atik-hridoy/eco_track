import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eco Tracker Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.secondary,
                backgroundColor: Theme.of(context).primaryColor, // purple
                textStyle: TextStyle(fontSize: 18),
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/log');
              },
              child: Text('Log Activity'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Theme.of(context).colorScheme.secondary,
                textStyle: TextStyle(fontSize: 18),
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/recommendations');
              },
              child: Text('Recommendations'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.secondary,
                backgroundColor: Theme.of(context).primaryColor, // purple
                textStyle: TextStyle(fontSize: 18),
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/progress');
              },
              child: Text('Progress'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Theme.of(context).colorScheme.secondary,
                textStyle: TextStyle(fontSize: 18),
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/community');
              },
              child: Text('Community'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.secondary,
                backgroundColor: Theme.of(context).primaryColor, // purple
                textStyle: TextStyle(fontSize: 18),
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/educational_content');
              },
              child: Text('Educational Content'),
            ),
          ],
        ),
      ),
    );
  }
}
