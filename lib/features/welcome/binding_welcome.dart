import 'package:flowcy_customer/features/welcome/api_welcome.dart';
import 'package:flowcy_customer/features/welcome/controller_welcome.dart';
import 'package:get/get.dart';

class BindingWelcome implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ControllerWelcome(api: ApiWelcome()));
  }
}
