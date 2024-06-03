import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../models/activity.dart';
import '../services/data_service.dart';
import 'package:provider/provider.dart';

class ProgressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataService = Provider.of<DataService>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Progress'),
      ),
      body: FutureBuilder<List<Activity>>(
        future: dataService.getActivities(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final activities = snapshot.data ?? [];
          final data = _createChartData(activities);

          return Padding(
            padding: EdgeInsets.all(16.0),
            child: charts.TimeSeriesChart(
              data,
              animate: true,
              dateTimeFactory: const charts.LocalDateTimeFactory(),
            ),
          );
        },
      ),
    );
  }

  List<charts.Series<Activity, DateTime>> _createChartData(
      List<Activity> activities) {
    return [
      charts.Series<Activity, DateTime>(
        id: 'Carbon Footprint',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (Activity activity, _) => activity.date,
        measureFn: (Activity activity, _) => activity.amount,
        data: activities,
      ),
    ];
  }
}
