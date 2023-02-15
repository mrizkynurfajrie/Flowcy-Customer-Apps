import 'package:flowcy_customer/features/login/api_login.dart';
import 'package:flowcy_customer/features/login/controller_login.dart';
import 'package:get/get.dart';

class BindingLogin implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ControllerLogin(api: ApiLogin()));
  }
}