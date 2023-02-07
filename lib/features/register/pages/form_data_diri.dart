import 'dart:io';

import 'package:flowcy_customer/features/register/controller_register.dart';
import 'package:flowcy_customer/shared/constans/assets.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/inputs/input_date.dart';
import 'package:flowcy_customer/shared/widgets/inputs/input_phone.dart';
import 'package:flowcy_customer/shared/widgets/inputs/input_primary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FormDataDiri extends GetView<ControllerRegister> {
  const FormDataDiri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Obx(
            () => Center(
              child: Column(
                children: [
                  verticalSpace(16.h),
                  //Widget 1 - Profile Picture//
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => controller.imgSourceSelector(context),
                        child: (controller.imgPreview.isNotEmpty)
                            ? SizedBox(
                                width: IconSizes.xl,
                                height: IconSizes.xl,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.file(
                                    File(controller.imgPreview.value),
                                    width: IconSizes.xl,
                                    height: IconSizes.xl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            : Container(
                                alignment: Alignment.topCenter,
                                height: IconSizes.xxxl,
                                width: IconSizes.xxxl,
                                child: SizedBox(
                                  child: (controller.controllerUser.user.value
                                                  .image !=
                                              '' &&
                                          controller.controllerUser.user.value
                                                  .image !=
                                              null)
                                      ? ClipRRect(
                                          borderRadius: BorderRadius.circular(90),
                                          child: SizedBox(
                                            height: IconSizes.xl,
                                            width: IconSizes.xl,
                                            child: Image.network(
                                              // "${Api1().imgStorUrl}${controller.controllerRiderInfo.rider.value.image}",
                                              "",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )
                                      : Container(
                                          width: IconSizes.xxxl,
                                          height: IconSizes.xxxl,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 24.w,
                                            vertical: 24.h,
                                          ),
                                          decoration: BoxDecoration(
                                            boxShadow: Shadows.smBottom,
                                            border: Border.all(
                                              color: AppColor.neutral.shade50,
                                            ),
                                            color: AppColor.whiteColor,
                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(300),
                                            ),
                                          ),
                                          child: SvgPicture.asset(
                                            AppIcons.user,
                                            fit: BoxFit.cover,
                                            color: AppColor.neutral.shade500,
                                          ),
                                        ),
                                ),
                              ),
                      ),
                      verticalSpace(16.h),
                      //text profile picture//
                      Text(
                        'Ubah Foto Profil',
                        style: TextStyles.inter.copyWith(
                          fontSize: FontSizes.s14,
                          color: AppColor.neutral.shade700,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(16.h),
                  //Widget 2 - Input//
                  Column(
                    children: [
                      //nama//
                      InputPrimary(
                        label: 'Nama',
                        margin: EdgeInsets.only(top: 6.h),
                        hintText: 'Masukkan nama lengkapmu',
                        controller: controller.txtName,
                        onTap: () {},
                      ),
                      verticalSpace(16.h),
                      //tanggal lahir//
                      InputDate(
                        controller: controller.txtDate,
                        selectedDate: (value) {},
                        isValid: (value) {},
                        label: 'Tanggal Lahir',
                        margin: EdgeInsets.only(top: 6.h),
                        suffixIconPadding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 12.h,
                        ),
                        suffixIcon: SvgPicture.asset(
                          AppIcons.calendar,
                          color: AppColor.neutral.shade400,
                        ),
                      ),
                      verticalSpace(16.h),
                      //jenis kelamin//
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jenis Kelamin',
                            style: TextStyles.inter.copyWith(
                              fontSize: FontSizes.s14,
                              fontWeight: FontWeight.w600,
                              color: AppColor.neutral.shade700,
                            ),
                          ),
                          verticalSpace(6.h),
                          Container(
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                              color: AppColor.whiteColor,
                              border: Border.all(
                                color: AppColor.neutral.shade300,
                              ),
                            ),
                            child: TextFormField(
                              readOnly: true,
                              style: TextStyles.inter.copyWith(
                                fontSize: FontSizes.s16,
                                color: AppColor.neutral.shade500,
                              ),
                              controller: controller.txtGender,
                              onTap: () => controller.genderSelect(context),
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: IconSizes.arrowDown,
                                  color: AppColor.neutral.shade400,
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 12.h,
                                  horizontal: 12.w,
                                ),
                                hintText: 'Pilih jenis kelamin',
                                hintStyle: TextStyles.inter.copyWith(
                                  fontSize: FontSizes.s16,
                                  color: AppColor.neutral.shade500,
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value == '') {
                                  return 'Pastikan form ini tidak kosong';
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      verticalSpace(16.h),
                      //nomor ponsel//
                      InputPhone(
                        label: 'Nomor Ponsel',
                        margin: EdgeInsets.only(top: 6.h),
                        controller: controller.txtPhone,
                        phoneNumber: (value) {},
                        onChange: (value) {},
                      ),
                      verticalSpace(50.h)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
