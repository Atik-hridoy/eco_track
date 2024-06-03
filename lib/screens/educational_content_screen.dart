import 'package:flutter/material.dart';

class EducationalContentScreen extends StatelessWidget {
  final List<Map<String, String>> educationalContent = [
    {
      'title': 'The Importance of Recycling',
      'content':
          'Recycling helps to reduce the pollution caused by waste and reduces the need for raw materials, thus preserving natural resources.'
    },
    {
      'title': 'How to Reduce Your Carbon Footprint',
      'content':
          'Simple actions like using public transport, reducing meat consumption, and conserving energy can significantly reduce your carbon footprint.'
    },
    {
      'title': 'Benefits of Plant-Based Diet',
      'content':
          'Plant-based diets are not only healthy but also environmentally friendly. They require less energy, land, and water resources compared to animal-based diets.'
    },
    // Add more educational content as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Educational Content'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: educationalContent.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(educationalContent[index]['title']!),
              subtitle: Text(educationalContent[index]['content']!),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}
