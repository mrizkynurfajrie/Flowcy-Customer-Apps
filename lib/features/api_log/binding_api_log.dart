import 'package:flowcy_customer/features/api_log/controller_api_log.dart';
import 'package:get/get.dart';

class BindingApiLog implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ControllerApiLog>(() {
      return ControllerApiLog();
    });
  }
}
