import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finalyearproject/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class FirebaseForm extends GetxController {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  void signup(String email, String password) async {
    await _firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      Get.to(HomePage());
    });
  }

  void login(String email, String password) async {
    await _firebaseAuth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      Get.to(HomePage());
    });
  }

  void signOut() async {
    await _firebaseAuth.signOut();
  }


  
}
