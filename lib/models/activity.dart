import 'dart:convert';

class Activity {
  final String type;
  final double amount;
  final DateTime date;

  Activity({required this.type, required this.amount, required this.date});

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'amount': amount,
      'date': date.toIso8601String(),
    };
  }

  factory Activity.fromMap(Map<String, dynamic> map) {
    return Activity(
      type: map['type'],
      amount: map['amount'],
      date: DateTime.parse(map['date']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Activity.fromJson(String source) =>
      Activity.fromMap(json.decode(source));
}
