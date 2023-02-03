import 'package:flowcy_customer/features/splash/api_splash.dart';
import 'package:flowcy_customer/features/splash/controller_splash.dart';
import 'package:get/get.dart';

class BindingSplash implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ControllerSplash>(() => ControllerSplash(api: ApiSplash()));
  }
}