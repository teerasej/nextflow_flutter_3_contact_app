
import 'package:get/get.dart';

class ContractController extends GetxController{
  String username = "";
  String password = "";

  void save() {
    print('username: $username');
    print('password: $password');
  }
}