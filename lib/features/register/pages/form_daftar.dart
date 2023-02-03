import 'package:flowcy_customer/features/register/controller_register.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/inputs/input_primary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FormDaftar extends GetView<ControllerRegister> {
  const FormDaftar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(16.h),
                Text(
                  'Menggunakan akun dengan email dan kata sandi baru.',
                  style: TextStyles.inter.copyWith(
                    fontSize: FontSizes.s16,
                    color: AppColor.neutral.shade600,
                  ),
                ),
                verticalSpace(16.h),
                InputPrimary(
                  hintText: 'Email',
                  onTap: () {},
                  hintStyles: TextStyles.inter.copyWith(
                    fontSize: FontSizes.s16,
                    color: AppColor.neutral.shade500,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.neutral.shade300,
                      width: 1,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: AppColor.neutral.shade300,
                    width: 1,
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
