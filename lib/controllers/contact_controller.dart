import 'package:get/get.dart';

class ContactController extends GetxController {
  String name = "";
  String email = "";

  void save() {
    print('user: $name');
    print('email: $email');
  }
}
