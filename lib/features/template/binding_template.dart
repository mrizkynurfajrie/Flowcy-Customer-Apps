import 'package:flowcy_customer/features/template/controller_template.dart';
import 'package:get/get.dart';

class BindingTemplate implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ControllerTemplate());
  }
  
}