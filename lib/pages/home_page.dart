import 'package:finalyearproject/pages/login_page.dart';
import 'package:finalyearproject/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset('assets/images/bg.jpg'),
          const Center(
            heightFactor: 3.0,
            child: Text(
              'PharmaTech',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 38.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 130,
                  height: 50,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          elevation: 1,
                          backgroundColor: Colors.blueGrey,
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                      onPressed: () {
                        Get.to(SignUpPage());
                      },
                      child: Text(
                        "signUp",
                        style: TextStyle(fontSize: 17),
                      )),
                ),
                Container(
                  width: 130,
                  height: 50,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          side: BorderSide(color: Colors.blueGrey),
                          elevation: 1,
                          backgroundColor: Colors.white,
                          primary: Colors.blueGrey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                      onPressed: () {
                        Get.to(LoginPage());
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 17),
                      )),
                ),
              ],
            ),
          ),
          SizedBox(height: 60),
          Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 50.0),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
                side: const BorderSide(
                  color: Colors.blue,
                ),
              )),
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
          )
        ],
      ),
    );
  }
}
