import 'dart:io';

import 'package:flowcy_customer/features/register/controller_register.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                      // (controller.imgPreview != "") ?
                      SizedBox(
                        width: IconSizes.profPictSet,
                        height: IconSizes.profPictSet,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.file(
                            File(controller.imgPreview.value),
                            width: IconSizes.profPictSet,
                            height: IconSizes.profPictSet,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                      // : Container(
                      //     alignment: Alignment.topCenter,
                      //     height: IconSizes.profPictSet,
                      //     width: IconSizes.profPictSet,
                      //     child: Container(
                      //       padding: const EdgeInsets.all(2),
                      //       child: (controller.controllerRiderInfo.rider.value
                      //                       .image !=
                      //                   '' &&
                      //               controller.controllerRiderInfo.rider.value
                      //                       .image !=
                      //                   null)
                      //           ? ClipRRect(
                      //               borderRadius: BorderRadius.circular(90),
                      //               child: SizedBox(
                      //                 height: IconSizes.profPictSet,
                      //                 width: IconSizes.profPictSet,
                      //                 child: Image.network(
                      //                   "${Api1().imgStorUrl}${controller.controllerRiderInfo.rider.value.image}",
                      //                   fit: BoxFit.cover,
                      //                 ),
                      //               ),
                      //             )
                      //           : Column(
                      //               mainAxisAlignment:
                      //                   MainAxisAlignment.center,
                      //               children: [
                      //                 SizedBox(
                      //                   width: IconSizes.med,
                      //                   height: IconSizes.med,
                      //                   child: ClipRRect(
                      //                     borderRadius:
                      //                         BorderRadius.circular(100),
                      //                     child: SvgPicture.asset(
                      //                       AppIcons.defaultavatar,
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //     ),
                      //   ),
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
