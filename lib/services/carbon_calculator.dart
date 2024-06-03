import 'package:eco_track/models/activity.dart';

class CarbonCalculator {
  static double calculateFootprint(Activity activity) {
    double footprint = 0.0;
    switch (activity.type) {
      case 'transport':
        footprint = activity.amount * 0.21; // example value
        break;
      case 'energy':
        footprint = activity.amount * 0.55; // example value
        break;
      case 'diet':
        footprint = activity.amount * 0.15; // example value
        break;
      case 'waste':
        footprint = activity.amount * 0.10; // example value
        break;
    }
    return footprint;
  }
}
