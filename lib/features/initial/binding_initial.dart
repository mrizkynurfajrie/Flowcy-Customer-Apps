import 'package:flowcy_customer/features/initial/api_initial.dart';
import 'package:flowcy_customer/features/initial/controller_initial.dart';
import 'package:get/get.dart';

class BindingIntial extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ControllerInitial(api: ApiInitial()));
  }
}
