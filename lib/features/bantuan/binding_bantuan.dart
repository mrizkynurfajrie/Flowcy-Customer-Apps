import 'package:flowcy_customer/features/bantuan/api_bantuan.dart';
import 'package:flowcy_customer/features/bantuan/controller_bantuan.dart';
import 'package:get/get.dart';

class BindingBantuan implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ControllerBantuan(api: ApiBantuan()));
  }
}