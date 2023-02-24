import 'package:flowcy_customer/features/data_pribadi/controller_data_pribadi.dart';
import 'package:flowcy_customer/routes/app_routes.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PageBantuan extends GetView<ControllerDataPribadi> {
  const PageBantuan({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      resizeAvoidBottom: true,
      title: "",
      toolbarColor: AppColor.whiteColor,
      backgroundColor: AppColor.whiteColor,
      toolbarTitleColor: AppColor.neutral.shade700,
      enableBack: true,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      center: Padding(
        padding: const EdgeInsets.only(left: 95),
        child: Column(
          children: [
            Text(
              'Bantuan',
              style: TextStyles.inter.copyWith(
                fontSize: FontSizes.s18,
                color: AppColor.neutral.shade900,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Widget 1 - Menut Button//
              MenuButton(
                ontap: () => Get.toNamed(Routes.pagesKebijakan),
                title: 'Kebijakan Pelayanan',
              ),
              MenuButton(
                ontap: () => Get.toNamed(Routes.pagesPrivasi),
                title: 'Privasi dan Keamanan',
              ),
              MenuButton(
                ontap: () => Get.toNamed(Routes.pagesFAQ),
                title: 'Frequently Asked Questions (FAQ)',
              ),
              MenuButton(
                ontap: () => Get.toNamed(Routes.pagesHubungi),
                title: 'Hubungi Customer Service',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final Function() ontap;
  final String title;

  const MenuButton({
    Key? key,
    required this.ontap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyles.inter.copyWith(
                fontSize: FontSizes.s14,
                fontWeight: FontWeight.w500,
                color: AppColor.neutral.shade700,
              ),
              textAlign: TextAlign.center,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColor.neutral.shade700,
            ),
          ],
        ),
      ),
    );
  }
}
