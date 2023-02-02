import 'dart:developer';

import 'package:flowcy_customer/app_config.dart';
import 'package:flowcy_customer/routes/app_pages.dart';
import 'package:flowcy_customer/routes/app_routes.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/controllers/controller_bind.dart';
import 'package:flowcy_customer/shared/helpers/utils.dart';
import 'package:flowcy_customer/shared/widgets/others/page_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'features/api_log/components/overlay_log_button.dart';

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
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
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

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    log("App State : $state");
  }

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
      builder: (context, child) => GetMaterialApp(
        navigatorKey: Get.key,
        title: 'FLOWCY CUSTOMER',
        theme: ThemeData(
          platform: TargetPlatform.android,
          brightness: Brightness.light,
          primaryColor: AppColor.primaryColor,
          primarySwatch: AppColor.primaryColor,
          fontFamily: 'Inter',
        ),
        debugShowCheckedModeBanner: AppConfig.showDebugBanner(),
        builder: (BuildContext context, Widget? child) {
          return MediaQuery(
            ///Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                dismisKeyboard();
              },
              child: Stack(children: [
                child!,
                AppConfig.isDevelopment() || AppConfig.isStaging()
                    ? const OverlayLogButton()
                    : const SizedBox(),
                PageInfo(pageName: pageName),
              ]),
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
      ),
    );
  }
}
