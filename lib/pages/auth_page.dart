import 'package:eatsy_food_delivery_app/screens/home_screen.dart';
import 'package:eatsy_food_delivery_app/screens/log_in_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user is already logged in
          if (snapshot.hasData) {
            return HomeScreen();
          }

          // user hasn't logged in
          else {
            return LoginScreen();
          }
        },
      ),
    );
  }
}
