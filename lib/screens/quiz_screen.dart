import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  final List<Map<String, dynamic>> questions = [
    {
      'question': 'What is the main cause of global warming?',
      'answers': [
        'Deforestation',
        'Fossil fuels',
        'Agriculture',
        'Waste production'
      ],
      'correct': 'Fossil fuels'
    },
    // Add more questions here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          return QuizQuestionCard(questionData: questions[index]);
        },
      ),
    );
  }
}

class QuizQuestionCard extends StatelessWidget {
  final Map<String, dynamic> questionData;

  QuizQuestionCard({required this.questionData});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(questionData['question']),
            ...questionData['answers'].map<Widget>((answer) {
              return ListTile(
                title: Text(answer),
                leading: Radio(
                  value: answer,
                  groupValue: questionData['correct'],
                  onChanged: (value) {},
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
