import 'package:finalyearproject/pages/signedUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class FirebaseForm extends GetxController {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  void onInit() {
    _firebaseAuth.authStateChanges();
    // TODO: implement onInit
    super.onInit();
  }

  void signup(email, password) async {
    await _firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      Get.to(SignedUP());
    });
  }

  void login(email, password) async {
    await _firebaseAuth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      Get.to(SignedUP());
    });
  }

  void signOut() async {
    await _firebaseAuth.signOut();
  }
}
