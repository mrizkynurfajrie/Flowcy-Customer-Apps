import 'package:flowcy_customer/features/notification/api_notification.dart';
import 'package:flowcy_customer/features/notification/controller_notification.dart';
import 'package:get/get.dart';

class BindingNotification implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ControllerNotification(api: ApiNotification()));
  }
}
