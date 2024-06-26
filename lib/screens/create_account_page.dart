import 'package:eatsy_food_delivery_app/provider/auth_provider.dart';
import 'package:eatsy_food_delivery_app/screens/log_in_screen.dart';
import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:eatsy_food_delivery_app/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateAccountScreen extends StatefulWidget {
  CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthenticationProvider>(context);

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
                      SizedBox(height: 16),
                      Text(
                        "Create Your Eatsy Account",
                        style: apptheme.LoginWelcome,
                      ),
                      SizedBox(height: 30),
                      ReusableTexfields(
                          controller: emailController,
                          hint: "E- Mail",
                          hiddenText: false,
                          prefixIcon: Icon(Icons.email_rounded),
                          suffixIcon: Icon(null)),
                      SizedBox(height: 10),
                      ReusableTexfields(
                          controller: passwordController,
                          hint: "Enter Password",
                          hiddenText: true,
                          prefixIcon: Icon(Icons.password_rounded),
                          suffixIcon: Icon(Icons.visibility_off_rounded)),
                      SizedBox(height: 10),
                      ReusableTexfields(
                          controller: confirmPasswordController,
                          hint: "Confirm Password",
                          hiddenText: true,
                          prefixIcon: Icon(Icons.password_rounded),
                          suffixIcon: Icon(Icons.visibility_off_rounded)),
                      SizedBox(height: 30),
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
                            if (authProvider.passwordMatches(
                                passwordController.text,
                                confirmPasswordController.text)) {
                              authProvider.signUp(emailController.text,
                                  passwordController.text, context);
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text("Passwords do not match"),
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: apptheme.ErrorColor,
                                duration: Duration(seconds: 3),
                              ));
                            }
                          },
                          child: Text(
                            "Sign Up",
                            style: apptheme.ButtonText,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
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
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
