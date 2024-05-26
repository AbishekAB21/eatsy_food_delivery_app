import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? _user;
  User? get user => _user;

  AuthenticationProvider() {
    _loadCurrentUser();
  }

  void _loadCurrentUser() {
    _user = _auth.currentUser;
    notifyListeners();
  }

  Future<void> signIn(String email, String password, BuildContext context) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      _user = userCredential.user;
      notifyListeners();
    } catch (e) {
      print("Error signing in: $e");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Error Logging in: $e"),
        behavior: SnackBarBehavior.floating,
        backgroundColor: apptheme.ErrorColor,
        duration: Duration(seconds: 3),
      ));
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

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Account Created Successfully"),
        behavior: SnackBarBehavior.floating,
        backgroundColor: apptheme.SnackBarColor,
        duration: Duration(seconds: 3),
      ));

      Navigator.pushReplacementNamed(context, '/home');
    } catch (e) {
      print("Error signing up: $e");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Error Creating Account: $e"),
        behavior: SnackBarBehavior.floating,
        backgroundColor: apptheme.ErrorColor,
        duration: Duration(seconds: 3),
      ));
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
