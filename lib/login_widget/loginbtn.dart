import 'package:flutter/material.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        padding: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        onPressed: () {},
        child: const Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        color: Colors.white,
      ),
    );
  }
  }
