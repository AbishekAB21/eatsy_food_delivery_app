import 'package:eatsy_food_delivery_app/utils/apptheme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

final emailController = TextEditingController();

Future resetpassword(BuildContext context) async {
  try {
    await FirebaseAuth.instance
        .sendPasswordResetEmail(email: emailController.text.trim());
    showDialog(
      context: context,
      builder: (context) => SizedBox(
        height: 100,
        width: 300,
        child: AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          backgroundColor: apptheme.SnackBarColor,
          content: Text(
            "Password reset link sent ! Check your E-mail",
            style: apptheme.ErrorMessage,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pop(context);
    });
  } on FirebaseAuthException catch (e) {
    print(e);
    showDialog(
      context: context,
      builder: (context) => SizedBox(
        height: 100,
        width: 300,
        child: AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          backgroundColor: apptheme.ErrorColor,
          content: Text(
            e.message.toString(),
            style: apptheme.ErrorMessage,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pop(context);
    });
  }

  emailController.clear();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: apptheme.primaryColor,
        appBar: AppBar(
          backgroundColor: apptheme.primaryColor,
          iconTheme: IconThemeData(color: apptheme.primaryColor2),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ConstrainedBox(
                      constraints:
                          BoxConstraints(maxHeight: 100, maxWidth: 100),
                      child: Image.asset("assets/cutlery.png")),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Forgotten your password?",
                    style: apptheme.ForgotPasswordText,
                  ),
                  Text("No worries! Just enter your email, and",
                      style: apptheme.ForgotPasswordText),
                  Text("we'll guide you through resetting it in a snap.",
                      style: apptheme.ForgotPasswordText),
                  SizedBox(
                    height: 20,
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
                                    borderRadius: BorderRadius.circular(10)))),
                        onPressed: () {
                          resetpassword(context);
                        },
                        child: Text(
                          "Reset Password",
                          style: apptheme.ButtonText,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
