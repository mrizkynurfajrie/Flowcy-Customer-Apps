import 'package:flowcy_customer/features/api_log/binding_api_log.dart';
import 'package:flowcy_customer/features/api_log/page_api_log.dart';
import 'package:flowcy_customer/features/initial/binding_initial.dart';
import 'package:flowcy_customer/features/initial/page_initial.dart';
import 'package:flowcy_customer/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.initial,
        page: () => const PageInitial(),
        binding: BindingIntial()),
    GetPage(
      name: Routes.apiLog,
      page: () => const PageApiLog(),
      binding: BindingApiLog(),
    ),
  ];
}
