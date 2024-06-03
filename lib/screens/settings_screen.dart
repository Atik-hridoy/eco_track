import 'package:flutter/material.dart';
import '../models/user.dart';
import '../services/user_service.dart';

class SettingsScreen extends StatelessWidget {
  final AppUser user;
  final UserService userService = UserService();

  SettingsScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController(text: user.name);
    final emailController = TextEditingController(text: user.email);

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            ElevatedButton(
              onPressed: () async {
                userService.updateUser(
                  AppUser(
                    id: user.id,
                    name: nameController.text,
                    email: emailController.text,
                    avatarUrl: user.avatarUrl,
                  ),
                );
                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
