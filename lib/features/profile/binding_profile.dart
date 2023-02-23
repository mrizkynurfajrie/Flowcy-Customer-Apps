import 'package:flowcy_customer/features/profile/api_profile.dart';
import 'package:flowcy_customer/features/profile/controller_profile.dart';
import 'package:get/get.dart';

class BindingProfile implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ControllerProfile(api: ApiProfile()));
  }
}
