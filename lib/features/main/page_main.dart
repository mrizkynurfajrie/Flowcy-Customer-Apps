import 'package:flowcy_customer/features/main/controller_main.dart';
import 'package:flowcy_customer/shared/constans/assets.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/widgets/buttons/custom_bottom_navbar.dart';
import 'package:flowcy_customer/shared/widgets/others/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PageMain extends GetView<ControllerMain> {
  PageMain({Key? key}) : super(key: key);

  DateTime preBackpress = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(71.82)),
            color: AppColor.neutral.shade500,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            child: AppIcons.iconApp(
              AppIcons.scan,
              color: AppColor.whiteColor,
            ),
          ),
        ),
      ),
      // body: Center(
      //   child: Obx(() => controller.pages.elementAt(
      //         controller.currentPage.value,
      //       )),
      // ),

      body: WillPopScope(
        onWillPop: () async {
          if (controller.currentPage.value != 0) {
            controller.changePage(0);
            controller.pageController.jumpToPage(0);
            return false;
          }

          const maxDuration = Duration(seconds: 2);
          final timegap = DateTime.now().difference(preBackpress);

          final cantExit = timegap >= maxDuration;

          preBackpress = DateTime.now();
          if (cantExit) {
            showToast(
              message: "Tekan sekali lagi untuk keluar",
              color: AppColor.neutral.withOpacity(0.6),
            );
            return false;
          } else {
            return true;
          }
        },
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller.pageController,
          onPageChanged: (pageIndex) {
            controller.changePage(pageIndex);
          },
          children: controller.pages,
        ),
      ),
      bottomNavigationBar: Obx(
        () => CustomBottomNavBar(
          selectedIndex: controller.currentPage.value,
          onTap: (pageIndex) {
            controller.changePage(pageIndex);
            controller.pageController.jumpToPage(pageIndex);
          },
        ),
      ),
      // Obx(
      //   () => BottomNavigationBar(
      //     selectedItemColor: AppColor.primaryColor.shade400,
      //     currentIndex: controller.currentPage.value,
      //     onTap: (index) => controller.changePage(index),
      //     items: const [
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: "Beranda",
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.departure_board),
      //         label: "Perjalanan",
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.person),
      //         label: "Profil",
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
