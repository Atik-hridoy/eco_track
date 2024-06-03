import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/log_activity_screen.dart';
import 'screens/recommendations_screen.dart';
import 'screens/progress_screen.dart';
import 'screens/community_screen.dart';
import 'screens/educational_content_screen.dart';
import 'screens/quiz_screen.dart';
import 'screens/settings_screen.dart';
import 'services/data_service.dart';
import 'models/user.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<DataService>(create: (_) => DataService()),
      ],
      child: EcoTrackerApp(),
    ),
  );
}

class EcoTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eco Tracker',
      theme: ThemeData(
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Colors.grey[200],
        appBarTheme: AppBarTheme(
          color: Colors.green,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.green,
          textTheme: ButtonTextTheme.primary,
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
            .copyWith(secondary: Colors.purple),
      ),
      home: HomeScreen(),
      routes: {
        '/log': (context) => LogActivityScreen(),
        '/recommendations': (context) => RecommendationsScreen(),
        '/progress': (context) => ProgressScreen(),
        '/community': (context) => CommunityScreen(),
        '/educational_content': (context) => EducationalContentScreen(),
        '/quiz': (context) => QuizScreen(),
        '/settings': (context) => SettingsScreen(
              user: ModalRoute.of(context)!.settings.arguments as AppUser,
            ),
      },
    );
  }
}
