import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:finalyearproject/sign_up_widget/first_time_here.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFB0BEC5),
                      Color(0xFF90A4AE),
                      Color(0xFF78909C),
                      Color(0xFF607D8B),
                    ],
                  ),
                ),
                child: const SignUpTextInput(),
              ),
            ],
          ),
        ),
        value: SystemUiOverlayStyle.light,
      ),
    );
  }
}