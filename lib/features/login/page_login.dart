import 'package:flowcy_customer/features/login/controller_login.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/buttons/button_primary.dart';
import 'package:flowcy_customer/shared/widgets/inputs/input_email.dart';
import 'package:flowcy_customer/shared/widgets/inputs/input_password.dart';
import 'package:flowcy_customer/shared/widgets/inputs/input_primary.dart';
import 'package:flowcy_customer/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PageLogin extends GetView<ControllerLogin> {
  const PageLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      resizeAvoidBottom: true,
      title: "",
      toolbarColor: AppColor.whiteColor,
      backgroundColor: AppColor.whiteColor,
      toolbarTitleColor: AppColor.neutral.shade700,
      enableBack: true,
      padding: EdgeInsets.zero,
      center: Padding(
        padding: const EdgeInsets.only(left: 118),
        child: Column(
          children: [
            Text(
              'Masuk',
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
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //Widget 1 - Login Text//
              Text(
                'menggunakan dengan email yang sudah terdaftar.',
                style: TextStyles.inter.copyWith(
                  fontSize: FontSizes.s16,
                  color: AppColor.neutral.shade600,
                ),
              ),
              verticalSpace(24.h),
              //Widget 2 - Login Input//
              InputEmail(
                hintText: 'Email',
                controller: controller.txtEmail,
                isValid: (value) {},
                email: (value) {},
              ),
              verticalSpace(16.h),
              InputPassword(
                hintText: 'Kata sandi',
                controller: controller.txtPassword,
                onChange: (value) {},
              ),
              verticalSpace(32.h),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Lupa kata sandi',
                  style: TextStyles.inter.copyWith(
                    fontSize: FontSizes.s16,
                    color: AppColor.neutral.shade600,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Spacer(),
              ButtonPrimary(
                label: 'Masuk',
                labelStyle: TextStyles.inter.copyWith(
                  fontSize: FontSizes.s14,
                  fontWeight: FontWeight.w600,
                  color: AppColor.whiteColor,
                ),
                color: AppColor.primaryColor,
                cornerRadius: 8,
                height: 40,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
