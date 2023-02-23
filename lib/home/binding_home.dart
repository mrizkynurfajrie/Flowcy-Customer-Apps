import 'package:flowcy_customer/home/api_home.dart';
import 'package:flowcy_customer/home/controller_home.dart';
import 'package:get/get.dart';

class BindingHome implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ControllerHome(api: ApiHome()));
  }
}
