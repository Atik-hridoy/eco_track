import 'package:shared_preferences/shared_preferences.dart';
import '../models/activity.dart';

class DataService {
  Future<void> saveActivity(Activity activity) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> activities = prefs.getStringList('activities') ?? [];
    activities.add(activity.toJson());
    await prefs.setStringList('activities', activities);
  }

  Future<List<Activity>> getActivities() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> activities = prefs.getStringList('activities') ?? [];
    return activities.map((e) => Activity.fromJson(e)).toList();
  }
}
