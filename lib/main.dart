import 'dart:developer';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flowcy_customer/features/api_log/components/overlay_log_button.dart';
import 'package:flowcy_customer/routes/app_pages.dart';
import 'package:flowcy_customer/routes/app_routes.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/controllers/controller_bind.dart';
// import 'package:flowcy_customer/shared/helpers/local_notification_service.dart';
import 'package:flowcy_customer/shared/helpers/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'shared/widgets/others/page_info.dart';

Future<void> main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  // LocalNotificationService.initialize();
  // await Firebase.initializeApp();
  // FirebaseMessaging.onBackgroundMessage(backgroundHandler);

  runApp(const App());
}

// receive message when app in background
// Future<void> backgroundHandler(RemoteMessage message) async {
//   log(message.data.toString());
//   // log(message.notification?.title?.toString());
// }

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppView();
  }
}

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> with WidgetsBindingObserver {
  String pageName = '';

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) async {
  //   if (state == AppLifecycleState.inactive ||
  //       state == AppLifecycleState.paused) {
  //     Api1().setLastActive(dateTime: DateTime.now());
  //   }

  //   if (state == AppLifecycleState.resumed) {
  //     final d = DateTime.now();
  //     final d2 = await Api1().getLastActive();

  //     int dif = d.difference(d2).inSeconds;

  //     if (Api1().isLogged) {
  //       if (dif > 120) {
  //         Api1().userIdleLogout();
  //       }
  //     }
  //   }
  // }

  updatePageRoute(value) {
    try {
      var name = value!.route!.settings.name.toString();
      log(name);
      setState(() {
        pageName = name;
      });
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, __) => GetMaterialApp(
        navigatorKey: Get.key,
        title: 'FLOWCY CUSTOMER',
        theme: ThemeData(
          platform: TargetPlatform.android,
          brightness: Brightness.light,
          primaryColor: AppColor.primaryColor,
          primarySwatch: AppColor.primaryColor,
          fontFamily: 'Inter',
        ),
        builder: (BuildContext context, Widget? child) {
          return MediaQuery(
            ///Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                dismisKeyboard();
              },
              child: Stack(
                children: [
                  child!,
                  const OverlayLogButton(),
                  PageInfo(pageName: pageName),
                ],
              ),
            ),
          );
        },
        getPages: AppPages.pages,
        initialBinding: ControllerBind(),
        initialRoute: Routes.initial,
        // translationsKeys: AppTranslation.translations,
        locale: const Locale('id', 'ID'),
        routingCallback: (value) {
          if (value != null) {
            updatePageRoute(value);
          }
        },
        defaultTransition: Transition.cupertino,
      ),
    );
  }
}
