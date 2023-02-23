import 'package:flowcy_customer/features/main/controller_main.dart';
import 'package:flowcy_customer/home/api_home.dart';
import 'package:flowcy_customer/home/controller_home.dart';
import 'package:get/get.dart';

class BindingMain implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ControllerMain>(() => ControllerMain());
    Get.lazyPut<ControllerHome>(() => ControllerHome(api: ApiHome()));
  }
}
