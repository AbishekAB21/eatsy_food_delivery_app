import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

 // User log out
 void signoutuser() async{
    await FirebaseAuth.instance.signOut();
  }

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            signoutuser();
          }, icon: Icon(Icons.logout))
        ],
      ),
      body: Center(child: Text("Home Screen"),),
    );
  }
}