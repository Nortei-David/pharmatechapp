import 'package:flutter/material.dart';
import 'email.dart';
import 'password.dart';
import 'loginbtn.dart';
import 'signupbtn.dart';

class SignUpTextInput extends StatelessWidget {
  const SignUpTextInput({ Key? key }) : super(key: key);

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
              'Sign Up',
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
             SizedBox(height: 50),
             SignupBtn(),
             SizedBox(height: 30),
             LogInBtn(),
            // // const SizedBox(height: 20),
            // RememberMe(),
             
             
            // // const SizedBox(height: 50),
            // SignUpBtn(),
          ],
        ),
      ),
    );
  }
}