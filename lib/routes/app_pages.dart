import 'package:flowcy_customer/features/api_log/binding_api_log.dart';
import 'package:flowcy_customer/features/api_log/page_api_log.dart';
import 'package:flowcy_customer/features/data_pribadi/page_data_pribadi.dart';
import 'package:flowcy_customer/features/data_pribadi/pages/ubah_alamat.dart';
import 'package:flowcy_customer/features/data_pribadi/pages/ubah_data_profil.dart';
import 'package:flowcy_customer/features/data_pribadi/pages/ubah_kata_sandi.dart';
import 'package:flowcy_customer/features/initial/binding_initial.dart';
import 'package:flowcy_customer/features/initial/page_initial.dart';
import 'package:flowcy_customer/features/login/binding_login.dart';
import 'package:flowcy_customer/features/login/forgot_password/page_forgot_password.dart';
import 'package:flowcy_customer/features/login/forgot_password/pages/new_password_success.dart';
import 'package:flowcy_customer/features/login/page_login.dart';
import 'package:flowcy_customer/features/main/binding_main.dart';
import 'package:flowcy_customer/features/main/page_main.dart';
import 'package:flowcy_customer/features/register/binding_register.dart';
import 'package:flowcy_customer/features/register/page_register.dart';
import 'package:flowcy_customer/features/splash/page_splash.dart';
import 'package:flowcy_customer/features/welcome/page_welcome.dart';
import 'package:flowcy_customer/home/binding_home.dart';
import 'package:flowcy_customer/home/page_home.dart';
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
    GetPage(
      name: Routes.forgotPasswordPage,
      page: () => const PageForgotPassword(),
      binding: BindingLogin(),
    ),
    GetPage(
      name: Routes.newPasswordSuccess,
      page: () => const NewPasswordSuccess(),
    ),
    GetPage(
      name: Routes.homePage,
      page: () => const PageHome(),
      binding: BindingHome(),
    ),
    GetPage(
      name: Routes.mainPage,
      page: () => PageMain(),
      binding: BindingMain(),
    ),
    GetPage(
      name: Routes.datapribadiPage,
      page: () => const PageDataPribadi(),
    ),
    GetPage(
      name: Routes.ubahdataprofilPage,
      page: () => const UbahDataProfil(),
    ),
    GetPage(
      name: Routes.ubahkatasandi,
      page: () => const UbahKataSandi(),
    ),
    GetPage(
      name: Routes.ubahalamat,
      page: () => const UbahAlamat(),
    ),
  ];
}
