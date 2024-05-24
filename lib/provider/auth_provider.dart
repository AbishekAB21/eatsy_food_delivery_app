import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? _user;
  User? get user => _user;

  Future<void> signIn(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      _user = userCredential.user;
      notifyListeners();
    } catch (e) {
      print("Error signing in: $e");
      rethrow;
    }
  }

  Future<void> signUp(String email, String password, BuildContext context) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      _user = userCredential.user;
      notifyListeners();

      // Show confirmation notification
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Account Created Successfully"),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.green,
        duration: Duration(seconds: 3),
      ));

      // Navigate to home screen
      Navigator.pushReplacementNamed(context, '/home');
    } catch (e) {
      print("Error signing up: $e");
      rethrow;
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
    _user = null;
    notifyListeners();
  }

  bool passwordMatches(String password, String confirmPassword) {
    return password == confirmPassword;
  }
}
