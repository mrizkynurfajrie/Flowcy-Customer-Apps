import 'package:flowcy_customer/features/data_pribadi/controller_data_pribadi.dart';
import 'package:flowcy_customer/routes/app_routes.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PageDataPribadi extends GetView<ControllerDataPribadi> {
  const PageDataPribadi({super.key});

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
        padding: const EdgeInsets.only(left: 78),
        child: Column(
          children: [
            Text(
              'Data Pribadi',
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
              verticalSpace(12.h),
              MenuButton(
                ontap: () => Get.toNamed(Routes.ubahdataprofilPage),
                title: 'Ubah Data Profil',
              ),
              verticalSpace(24.h),
              MenuButton(
                ontap: () => Get.toNamed(Routes.ubahkatasandi),
                title: 'Ubah Kata Sandi',
              ),
              verticalSpace(24.h),
              MenuButton(
                ontap: () => Get.toNamed(Routes.ubahalamat),
                title: 'Ubah Alamat',
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
    );
  }
}
