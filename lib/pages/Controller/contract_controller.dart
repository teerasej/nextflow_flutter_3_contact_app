import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class ContractController extends GetxController {
  String username = "";
  String password = "";

  void save() {
    if (username.isEmpty || password.isEmpty) {
      print('Please fill form');
    } else {
      print('username: $username');
      print('password: $password');
    }
  }
}
