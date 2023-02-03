import 'package:flowcy_customer/features/register/controller_register.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/inputs/input_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FormPassword extends GetView<ControllerRegister> {
  const FormPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(16.h),
            Text(
              'Buat kata sandi untuk akun barumu. Gunakan kombinasi unik agar lebih aman.',
              style: TextStyles.inter.copyWith(
                fontSize: FontSizes.s16,
                color: AppColor.neutral.shade600,
              ),
            ),
            verticalSpace(16.h),
            InputPassword(
              onChange: (value) {},
              controller: controller.passwordController,
              boxWidth: 343.w,
            ),
            verticalSpace(6.h),
            Text(
              'Kata sandi minimal 8 karakter',
              style: TextStyles.inter.copyWith(
                color: AppColor.neutral.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
