import 'package:get/get.dart';

class ContactController extends GetxController {
  String name = "";
  String email = "";

  void save() {
    if (name.isEmpty || email.isEmpty) {
      print('Please fill the form');
    } else if (!email.isEmail) {
      print('Please correct your email');
    } else {
      print('user: $name');
      print('email: $email');
    }
  }
}
