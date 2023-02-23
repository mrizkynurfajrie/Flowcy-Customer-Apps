import 'package:flowcy_customer/features/activity/api_activity.dart';
import 'package:flowcy_customer/features/activity/controller_activity.dart';
import 'package:get/get.dart';

class BindingActivity implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ControllerActivity(api: ApiActivity()));
  }
}