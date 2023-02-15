import 'package:flowcy_customer/features/login/controller_login.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/inputs/input_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FormInputNewPassword extends GetView<ControllerLogin> {
  const FormInputNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Widget 1 - Text Form Forgot Password Input New Password//
            Text(
              'Masukkan kata sandi baru ke dalam akun kamu [${controller.emailAccount}]',
              style: TextStyles.inter.copyWith(
                fontSize: FontSizes.s16,
                color: AppColor.neutral.shade600,
              ),
            ),
            //Widget 2 - Input New Password//
            verticalSpace(86.h),
            InputPassword(
              onChange: (value) {},
              controller: controller.txtForgotPasswordEmail,
            ),
            verticalSpace(6.h),
            //Widget 3 - Text For Password Validator//
            Text(
              'Kata sandi minimal 8 karakter',
              style: TextStyles.inter.copyWith(
                fontSize: FontSizes.s14,
                color: AppColor.neutral.shade600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
