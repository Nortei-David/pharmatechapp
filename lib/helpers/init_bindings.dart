import 'package:finalyearproject/controllers/firebase_form.dart';
import 'package:get/get.dart';

Future<void> initBindings() async {
  Get.lazyPut(() => FirebaseForm());
}
