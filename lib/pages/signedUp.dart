import 'package:flutter/material.dart';
import 'package:finalyearproject/pages/login_page.dart';
import 'package:get/get.dart';

class SignedUP extends StatelessWidget {
  const SignedUP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        const SizedBox(height: 30.0),
        const Center(
          heightFactor: 3.0,
          child: Text(
            'Welcome To\nPharmaTech',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 38.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        // const SizedBox(height: 30.0),
         Container(
                  width: 130,
                  height: 50,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          side: const BorderSide(color: Colors.blueGrey),
                          elevation: 1,
                          backgroundColor: Colors.blueGrey,
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                      onPressed: () {
                        Get.to(const LoginPage()) ;
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 17),
                      )),
                ),
        const SizedBox(height: 20.0),
        Center(
          child: Image.asset('assets/images/sign.jpg'),
        ),
        
        
      ]),
    );
  }
}
