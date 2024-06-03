import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/log_activity_screen.dart';
import 'screens/recommendations_screen.dart';
import 'screens/progress_screen.dart';
import 'screens/community_screen.dart';
import 'screens/educational_content_screen.dart';
import 'screens/quiz_screen.dart';
import 'screens/settings_screen.dart';
import '../models/user.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => HomeScreen(),
  '/log': (context) => LogActivityScreen(),
  '/recommendations': (context) => RecommendationsScreen(),
  '/progress': (context) => ProgressScreen(),
  '/community': (context) => CommunityScreen(),
  '/educational_content': (context) => EducationalContentScreen(),
  '/quiz': (context) => QuizScreen(),
  '/settings': (context) => SettingsScreen(
        user: ModalRoute.of(context)!.settings.arguments as AppUser,
      ),
};
