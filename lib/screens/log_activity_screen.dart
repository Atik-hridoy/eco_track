import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/activity.dart';
import '../services/data_service.dart';

class LogActivityScreen extends StatefulWidget {
  @override
  _LogActivityScreenState createState() => _LogActivityScreenState();
}

class _LogActivityScreenState extends State<LogActivityScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _activityType;
  double? _activityAmount;
  DateTime? _activityDate;

  final List<String> _activityTypes = ['Transport', 'Energy', 'Diet', 'Waste'];

  @override
  Widget build(BuildContext context) {
    final dataService = Provider.of<DataService>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Log Activity'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Activity Type'),
                value: _activityType,
                onChanged: (newValue) {
                  setState(() {
                    _activityType = newValue;
                  });
                },
                items: _activityTypes
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select an activity type';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Activity Amount'),
                keyboardType: TextInputType.number,
                onSaved: (newValue) {
                  _activityAmount = double.tryParse(newValue!);
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the activity amount';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () async {
                  final selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );
                  if (selectedDate != null) {
                    setState(() {
                      _activityDate = selectedDate;
                    });
                  }
                },
                child: Text(
                  _activityDate == null
                      ? 'Select Activity Date'
                      : _activityDate!.toLocal().toString().split(' ')[0],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() &&
                      _activityDate != null) {
                    _formKey.currentState!.save();
                    Activity newActivity = Activity(
                      type: _activityType!,
                      amount: _activityAmount!,
                      date: _activityDate!,
                    );
                    dataService.saveActivity(newActivity);
                    Navigator.pop(context);
                  }
                },
                child: Text('Log Activity'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
