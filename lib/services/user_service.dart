import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user.dart';

class UserService {
  final auth.FirebaseAuth _auth = auth.FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<AppUser> getUser(String uid) async {
    var userData = await _firestore.collection('users').doc(uid).get();
    return AppUser(
      id: userData.id,
      name: userData['name'],
      email: userData['email'],
      avatarUrl: userData['avatarUrl'],
    );
  }

  Future<void> updateUser(AppUser user) async {
    await _firestore.collection('users').doc(user.id).update({
      'name': user.name,
      'email': user.email,
      'avatarUrl': user.avatarUrl,
    });
  }
}
