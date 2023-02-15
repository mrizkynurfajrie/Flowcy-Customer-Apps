import 'package:flowcy_customer/features/welcome/controller_welcome.dart';
import 'package:flowcy_customer/routes/app_routes.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/buttons/button_primary.dart';
import 'package:flowcy_customer/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PageWelcome extends GetView<ControllerWelcome> {
  const PageWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      resizeAvoidBottom: true,
      title: "",
      toolbarColor: AppColor.whiteColor,
      backgroundColor: AppColor.whiteColor,
      toolbarTitleColor: AppColor.neutral.shade700,
      enableBack: false,
      padding: EdgeInsets.zero,
      center: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {},
            child: Text(
              'Bantuan',
              style: TextStyles.inter.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColor.neutral.shade700,
                fontSize: FontSizes.s14,
              ),
            ),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 16.h,
          ),
          child: Column(
            children: [
              verticalSpace(69.h),
              //Widget 1 - Welcome Picture//
              Container(
                height: 241.h,
                width: Get.width,
                color: AppColor.neutral.shade300,
              ),
              verticalSpace(32.h),
              //Widget 2 - Register Button//
              ButtonPrimary(
                label: 'Daftar Menggunakan Email',
                labelStyle: TextStyles.inter.copyWith(
                  fontSize: FontSizes.s14,
                  color: AppColor.whiteColor,
                  fontWeight: FontWeight.w600,
                ),
                color: AppColor.primaryColor,
                height: 40,
                cornerRadius: 8,
                onPressed: () {
                  Get.toNamed(Routes.registerpage);
                },
              ),
              verticalSpace(50.h),
              //Widget 3 - Login Text & Button//
              RichText(
                text: TextSpan(
                  text: 'Sudah punya akun? ',
                  style: TextStyles.inter.copyWith(
                    fontSize: FontSizes.s14,
                    fontWeight: FontWeight.w600,
                    color: AppColor.neutral.shade400,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Masuk',
                      style: TextStyles.inter.copyWith(
                        fontSize: FontSizes.s16,
                        fontWeight: FontWeight.w600,
                        color: AppColor.neutral.shade700,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed(Routes.loginPage);
                        },
                    ),
                  ],
                ),
              ),
              const Spacer(),
              //Widget 4 - Terms & Conditions Text//
              RichText(
                text: TextSpan(
                  text: 'Dengan ini saya menyetujui semua ',
                  style: TextStyles.inter.copyWith(
                    fontSize: FontSizes.s12,
                    color: AppColor.neutral.shade500,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Syarat dan Ketentuan ',
                      style: TextStyles.inter.copyWith(
                        fontSize: FontSizes.s12,
                        color: AppColor.neutral.shade900,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                    TextSpan(
                      text: 'serta ',
                      style: TextStyles.inter.copyWith(
                        fontSize: FontSizes.s12,
                        color: AppColor.neutral.shade500,
                      ),
                    ),
                    TextSpan(
                      text: 'Ketentuan Privasi',
                      style: TextStyles.inter.copyWith(
                        fontSize: FontSizes.s12,
                        color: AppColor.neutral.shade900,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
