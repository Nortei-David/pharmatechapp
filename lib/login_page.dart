import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login_widget/welcome_back.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                child: const LoginTextInput(),
              ),
            ],
          ),
        ),
        value: SystemUiOverlayStyle.light,
      ),
    );
  }
}