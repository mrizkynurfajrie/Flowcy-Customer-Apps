import 'package:flowcy_customer/features/login/controller_login.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/inputs/input_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FormInputEmail extends GetView<ControllerLogin> {
  const FormInputEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            //Widget 1 - Text Forgot Password - Input Email//
            Text(
              'Masukkan email untuk me-reset kata sandi akun kamu.',
              style: TextStyles.inter.copyWith(
                fontSize: FontSizes.s16,
                color: AppColor.neutral.shade600,
              ),
            ),
            verticalSpace(16.h),
            //Widget 2 - Input Email//
            InputEmail(
              controller: controller.txtForgotPasswordEmail,
              hintText: 'Email',
              isValid: (value) {},
              email: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
