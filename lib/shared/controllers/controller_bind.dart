import 'package:flowcy_customer/shared/controllers/controller_user.dart';
import 'package:get/get.dart';

class ControllerBind extends Bindings {
  @override
  void dependencies() {
    Get.put(ControllerUser());
  }
}
