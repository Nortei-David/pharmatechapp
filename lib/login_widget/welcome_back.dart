import 'package:flutter/material.dart';
import 'package:finalyearproject/login_widget/email.dart';
import 'package:finalyearproject/login_widget/password.dart';
import 'package:finalyearproject/login_widget/forgotpassword.dart';
import 'package:finalyearproject/login_widget/rememberme.dart';
import 'package:finalyearproject/login_widget/loginbtn.dart';
import 'package:finalyearproject/login_widget/signupbtn.dart';

class LoginTextInput extends StatefulWidget {
  const LoginTextInput({Key? key}) : super(key: key);

  @override
  State<LoginTextInput> createState() => _LoginTextInputState();
}

class _LoginTextInputState extends State<LoginTextInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.0),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 120,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Sign In',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            Email(),
            SizedBox(height: 50),
            Password(),
            // const SizedBox(height: 20),
            ForgotPassword(),
            // const SizedBox(height: 20),
            RememberMe(),
            SizedBox(height: 30),
            LoginBtn(),
            // const SizedBox(height: 50),
            SignUpBtn(),
          ],
        ),
      ),
    );
  }
}
