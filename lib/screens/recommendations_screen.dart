import 'package:flutter/material.dart';

class RecommendationsScreen extends StatelessWidget {
  final List<String> recommendations = [
    'Use public transport instead of driving.',
    'Reduce meat consumption.',
    'Recycle your waste.',
    'Use energy-efficient appliances.',
    'Switch to renewable energy sources.',
    // Add more recommendations as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recommendations'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: recommendations.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(recommendations[index]),
            ),
          );
        },
      ),
    );
  }
}
