import 'package:flowcy_customer/features/api_log/binding_api_log.dart';
import 'package:flowcy_customer/features/api_log/page_api_log.dart';
import 'package:flowcy_customer/features/initial/binding_initial.dart';
import 'package:flowcy_customer/features/initial/page_initial.dart';
import 'package:flowcy_customer/features/login/binding_login.dart';
import 'package:flowcy_customer/features/login/page_login.dart';
import 'package:flowcy_customer/features/register/binding_register.dart';
import 'package:flowcy_customer/features/register/page_register.dart';
import 'package:flowcy_customer/features/splash/page_splash.dart';
import 'package:flowcy_customer/features/welcome/page_welcome.dart';
import 'package:flowcy_customer/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.initial,
        page: () => const PageInitial(),
        binding: BindingIntial()),
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.welcomePage,
      page: () => const PageWelcome(),
    ),
    GetPage(
      name: Routes.apiLog,
      page: () => const PageApiLog(),
      binding: BindingApiLog(),
    ),
    GetPage(
      name: Routes.registerpage,
      page: () => const PageRegister(),
      binding: BindingRegister(),
    ),
    GetPage(
      name: Routes.loginPage,
      page: () => const PageLogin(),
      binding: BindingLogin(),
    ),
  ];
}
