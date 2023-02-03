import 'package:flowcy_customer/features/register/controller_register.dart';
import 'package:get/get.dart';

class BindingRegister implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ControllerRegister());
  }
}
