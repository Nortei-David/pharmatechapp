import 'package:flutter/material.dart';
import 'home_widget/slider_dot.dart';
import 'home_widget/login_and_register.dart';
import 'home_widget/googlesingnin.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('PharmaTech'),),
      body: Column(
        children: <Widget>[
          Image.asset('assets/images/bg.jpg'),
          const SliderDot(),
          const SizedBox(
            height: 10,
          ),
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
          const SizedBox(height: 30.0),
          const LoginAndRegister(),
          const SizedBox(height: 45.0),
          const GoogleSI(),
        ],
      ),
    );
  }
}


