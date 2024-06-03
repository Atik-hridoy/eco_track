import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  final List<Map<String, String>> communityPosts = [
    {
      'username': 'EcoWarrior',
      'message': 'I just switched to a plant-based diet!',
    },
    {
      'username': 'GreenQueen',
      'message': 'Reduced my car usage by 50% this month!',
    },
    // Add more posts as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: communityPosts.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(communityPosts[index]['username']!),
              subtitle: Text(communityPosts[index]['message']!),
            ),
          );
        },
      ),
    );
  }
}
