import 'package:flowcy_customer/features/login/controller_login.dart';
import 'package:flowcy_customer/routes/app_routes.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/buttons/button_primary.dart';
import 'package:flowcy_customer/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NewPasswordSuccess extends GetView<ControllerLogin> {
  const NewPasswordSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      title: '',
      resizeAvoidBottom: true,
      toolbarColor: AppColor.whiteColor,
      backgroundColor: AppColor.whiteColor,
      toolbarTitleColor: AppColor.neutral.shade700,
      enableBack: false,
      center: null,
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Widget 1 - Success Image//
            Container(
              height: 241.h,
              width: 343.w,
              color: AppColor.neutral.shade200,
            ),
            //Widget 2 - Text Success//
            verticalSpace(40.h),
            Text(
              'Berhasil Tersimpan',
              style: TextStyles.inter.copyWith(
                fontSize: FontSizes.s24,
                color: AppColor.neutral.shade900,
                fontWeight: FontWeight.w600,
              ),
            ),
            verticalSpace(15.h),
            //Widget 3 - Sub Text Success//
            Text(
              'Kata sandi baru berhasil tersimpan.\nGunakan untuk masuk ke dalam Flowcy dengan email yang sama.',
              style: TextStyles.inter.copyWith(
                fontSize: FontSizes.s14,
                color: AppColor.neutral.shade600,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            ButtonPrimary(
              label: 'Masuk ke Flowcy',
              labelStyle: TextStyles.inter.copyWith(
                fontSize: FontSizes.s14,
                color: AppColor.whiteColor,
                fontWeight: FontWeight.w600,
              ),
              cornerRadius: 8,
              height: 40,
              onPressed: () {
                Get.offNamed(Routes.loginPage);
              },
            ),
          ],
        ),
      ),
    );
  }
}
