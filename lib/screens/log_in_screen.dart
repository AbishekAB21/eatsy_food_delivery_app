import 'package:eatsy_food_delivery_app/screens/create_account_page.dart';
import 'package:eatsy_food_delivery_app/screens/forgot_password_screen.dart';
import 'package:eatsy_food_delivery_app/services/auth_service.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signinuser() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
  }

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
                        "Welcome to Eatsy",
                        style: apptheme.LoginWelcome,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Log in if you already have an Eatsy account",
                        style: apptheme.LoginText1,
                      ),
                      SizedBox(
                        height: 10,
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ForgotPasswordScreen(),
                                      ));
                                },
                                child: Text(
                                  "Forgot Password ?",
                                  style: apptheme.LoginText1,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
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
                              signinuser();
                            },
                            child: Text(
                              "Sign In",
                              style: apptheme.ButtonText,
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Or",
                        style: apptheme.LoginText1,
                      ),
                      SizedBox(
                        height: 20,
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
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CreateAccountScreen(),
                                  ));
                            },
                            child: Text(
                              "Create an Eatsy Account",
                              style: apptheme.ButtonText,
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "You can also log in using",
                        style: apptheme.LoginText1,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (){
                              AuthService().signInWithGoogle();
                            },
                            child: ConstrainedBox(
                                constraints:
                                    BoxConstraints(maxHeight: 30, maxWidth: 30),
                                child: Image.asset("assets/google.png")),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          GestureDetector(
                            onTap: (){/* Apple Sign In */},
                            child: ConstrainedBox(
                                constraints:
                                    BoxConstraints(maxHeight: 30, maxWidth: 30),
                                child: Image.asset("assets/twitter.png")),
                          ),
                        ],
                      )
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
