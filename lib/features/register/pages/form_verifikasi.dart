import 'dart:developer';

import 'package:flowcy_customer/features/register/controller_register.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/buttons/button_text.dart';
import 'package:flowcy_customer/shared/widgets/others/countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class FormVerifikasi extends GetView<ControllerRegister> {
  const FormVerifikasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            verticalSpace(16.h),
            Text(
              'Masukkan kode verifikasi yang terkirim ke ${controller.inputtedEmail} flowcy@indoteknokarya.com',
              style: TextStyles.inter.copyWith(
                fontSize: FontSizes.s16,
                color: AppColor.neutral.shade600,
              ),
            ),
            verticalSpace(16.h),
            Form(
              key: controller.formKey,
              child: PinCodeTextField(
                autoDisposeControllers: false,
                autoFocus: false,
                mainAxisAlignment: MainAxisAlignment.center,
                appContext: context,
                pastedTextStyle: const TextStyle(
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
                length: 4,
                obscureText: true,
                animationType: AnimationType.fade,
                validator: (_) {
                  return null;

                  // print("disini "+v!);
                  // if (GetUtils.isNum(v!) == false) {
                  //   return "Only number";
                  // } else {
                  //   return null;
                  // }
                },
                textStyle: TextStyles.inter.copyWith(
                  fontSize: FontSizes.s16,
                  color: AppColor.neutral.shade700,
                ),
                pinTheme: PinTheme(
                  // shape: PinCodeFieldShape.underline,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 50.h,
                  fieldWidth: 28.w,
                  // fieldOuterPadding: EdgeInsets.symmetric(
                  //   horizontal: Insets.med,
                  // ),
                  activeColor: AppColor.primaryColor,
                  activeFillColor: AppColor.whiteColor,
                  selectedColor: Colors.black,
                  selectedFillColor: AppColor.whiteColor,
                  disabledColor: AppColor.neutral.shade600,
                  inactiveFillColor: AppColor.whiteColor,
                  inactiveColor: Colors.black,
                ),
                cursorColor: Colors.black,
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                errorAnimationController: controller.errorController,
                controller: controller.otpController,
                keyboardType: TextInputType.number,
                onCompleted: (v) {
                  log("Completed");
                  controller.errorController.close();
                },
                onTap: () {
                  log("Pressed");
                },
                onChanged: (value) {
                  log(value);
                  controller.currentText.value = value;
                },
              ),
            ),
            verticalSpace(16.h),
            Obx(
              () => controller.showResendOtpButton.isFalse
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Kode OTP berlaku dalam waktu ',
                          style: TextStyles.inter.copyWith(
                            color: AppColor.neutral.shade600,
                          ),
                        ),
                        CountDownTimer(
                          secondsRemaining:
                              controller.showResendOtpButton.isFalse ? 240 : 0,
                          whenTimeExpires: () {
                            controller.showResendOtpButton.value = true;
                          },
                          countDownTimerStyle: TextStyles.inter.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColor.neutral.shade900,
                          ),
                        ),
                      ],
                    )
                  : const SizedBox(),
            ),
            Obx(
              () => controller.showResendOtpButton.isTrue
                  ? Column(
                      children: [
                        Text(
                          "Tidak menerima kode OTP ?",
                          style: TextStyles.inter.copyWith(
                            color: AppColor.neutral.shade700,
                          ),
                        ),
                        ButtonText(
                          color: AppColor.whiteColor,
                          onPressed: () {
                            controller.showResendOtpButton.value = false;
                          },
                          label: "Kirim ulang",
                          textStyle: TextStyles.inter.copyWith(
                            fontSize: FontSizes.s14,
                            height: 1.71,
                          ),
                        )
                      ],
                    )
                  : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
