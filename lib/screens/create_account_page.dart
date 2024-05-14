import 'package:eatsy_food_delivery_app/screens/log_in_screen.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
   CreateAccountScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
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
