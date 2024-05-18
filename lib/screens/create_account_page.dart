import 'package:eatsy_food_delivery_app/screens/home_screen.dart';
import 'package:eatsy_food_delivery_app/screens/log_in_screen.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

final emailController = TextEditingController();
final passwordController = TextEditingController();
final confirmpasswordController = TextEditingController();

Future signUp(BuildContext context) async {
  if (passwordmatches()) {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim());

    confirmationNotification(context);

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));

    emailController.clear();
    passwordController.clear();
    confirmpasswordController.clear();
  }
} 

bool passwordmatches() {
  if (passwordController.text.trim() == confirmpasswordController.text.trim()) {
    return true;
  } else {
    return false;
  }
}

void confirmationNotification(context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text("Account Created Succesfully "),
    behavior: SnackBarBehavior.floating,
    backgroundColor: apptheme.SnackBarColor,
    duration: Duration(seconds: 3),
    showCloseIcon: true,
    closeIconColor: apptheme.secondaryColor,
  ));
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: apptheme.primaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Column(
                    children: [
                      ConstrainedBox(
                          constraints:
                              BoxConstraints(maxHeight: 100, maxWidth: 100),
                          child: Image.asset("assets/cutlery.png")),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Create Your Eatsy Account",
                        style: apptheme.LoginWelcome,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                              hintText: "E-mail",
                              hintStyle: apptheme.LoginHintText,
                              prefixIcon: Icon(Icons.email_rounded),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              contentPadding: EdgeInsets.all(12)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: apptheme.LoginHintText,
                              prefixIcon: Icon(Icons.password_rounded),
                              suffixIcon: Icon(Icons.visibility_off_rounded),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              contentPadding: EdgeInsets.all(12)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: TextField(
                          controller: confirmpasswordController,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Confirm Password",
                              hintStyle: apptheme.LoginHintText,
                              prefixIcon: Icon(Icons.password_rounded),
                              suffixIcon: Icon(Icons.visibility_off_rounded),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              contentPadding: EdgeInsets.all(12)),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 56,
                        width: 310,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                foregroundColor: MaterialStatePropertyAll(
                                    apptheme.secondaryColor),
                                backgroundColor: MaterialStatePropertyAll(
                                    apptheme.primaryColor2),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            onPressed: () {
                              signUp(context);
                            },
                            child: Text(
                              "Sign Up",
                              style: apptheme.ButtonText,
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "I already have an account -",
                            style: apptheme.LoginText1,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginScreen(),
                                    ));
                              },
                              child: Text(
                                "Log in here",
                                style: apptheme.CreateAccountText,
                              ))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
