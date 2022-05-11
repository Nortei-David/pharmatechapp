import 'package:flutter/material.dart';

class GoogleSI extends StatelessWidget {
  const GoogleSI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: 
      FlatButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(36),
          side: const BorderSide(
            color: Colors.blue,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/download.png',
                height: 20,
                width: 20,
              ),
              const SizedBox(
                width: 12,
              ),
              const Text(
                'Connect with Google',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
