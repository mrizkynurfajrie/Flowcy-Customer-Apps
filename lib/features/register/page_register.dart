import 'package:flowcy_customer/features/register/controller_register.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/buttons/button_primary.dart';
import 'package:flowcy_customer/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PageRegister extends GetView<ControllerRegister> {
  const PageRegister({super.key});

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
      center: Obx(
        () => Padding(
          padding: EdgeInsets.only(
            left: controller.currentPage.value == 0
                ? 120
                : controller.currentPage.value == 1
                    ? 82
                    : controller.currentPage.value == 2
                        ? 78.5
                        : controller.currentPage.value == 3
                            ? 110
                            : 94,
          ),
          child: Text(
            controller.currentPage.value == 0
                ? "Daftar"
                : controller.currentPage.value == 1
                    ? "Verifikasi Akun"
                    : controller.currentPage.value == 2
                        ? "Buat Kata Sandi"
                        : controller.currentPage.value == 3
                            ? "Data Diri"
                            : "Data Alamat",
            style: TextStyles.titleSmBold.copyWith(
              color: AppColor.neutral.shade900,
            ),
          ),
        ),
      ),
      onBackPressed: () {
        var nextForm = controller.currentPage.value - 1;
        if (nextForm >= 0) {
          if (controller.currentPage.value == 4) {
            controller.changePage(nextForm);
            controller.pageController.animateToPage(
              nextForm,
              duration: Times.medium,
              curve: Curves.easeInOut,
            );
          } else {
            if (controller.currentPage.value == 3) {
              controller.changePage(nextForm);
              controller.pageController.animateToPage(
                nextForm,
                duration: Times.medium,
                curve: Curves.easeInOut,
              );
            } else {
              if (controller.currentPage.value == 2) {
                controller.passwordController.clear();
                controller.changePage(nextForm);
                controller.pageController.animateToPage(
                  nextForm,
                  duration: Times.medium,
                  curve: Curves.easeInOut,
                );
              } else {
                if (controller.currentPage.value == 1) {
                  controller.otpController.clear();
                  controller.changePage(nextForm);
                  controller.pageController.animateToPage(
                    nextForm,
                    duration: Times.medium,
                    curve: Curves.easeInOut,
                  );
                }
              }
            }
          }
        } else {
          Get.back();
        }
      },
      child: WillPopScope(
        onWillPop: () async {
          var nextForm = controller.currentPage.value - 1;
          if (nextForm >= 0) {
            if (controller.currentPage.value == 4) {
              //condition 4
            } else {
              if (controller.currentPage.value == 3) {
                //condition 3
              } else {
                if (controller.currentPage.value == 2) {
                  //condition 2
                }
              }
            }
            controller.changePage(nextForm);
            controller.pageController.animateToPage(
              nextForm,
              duration: Times.medium,
              curve: Curves.easeInOut,
            );
            return false;
          } else {
            return false;
          }
        },
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Expanded(
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: controller.pageController,
                    onPageChanged: (pageIndex) {
                      controller.changePage(pageIndex);
                    },
                    children: controller.pages,
                  ),
                ),
                Obx(
                  () => ButtonPrimary(
                    cornerRadius: 8.w,
                    height: 40.h,
                    size: 343.w,
                    label: controller.currentPage.value == 0
                        ? "Daftar"
                        : controller.currentPage.value == 1
                            ? "Verifikasi"
                            : controller.currentPage.value == 2
                                ? "Berikutnya"
                                : controller.currentPage.value == 3
                                    ? "Berikutnya"
                                    : "Simpan",
                    labelStyle: TextStyles.inter.copyWith(
                      fontSize: FontSizes.s14,
                      color: AppColor.whiteColor,
                      fontWeight: FontWeight.w600,
                    ),
                    onPressed: () async {
                      var nextForm = controller.currentPage.value + 1;
                      if (nextForm < 5) {
                        if (controller.currentPage.value == 0) {
                          controller.changePage(nextForm);
                          controller.pageController.animateToPage(
                            nextForm,
                            duration: Times.medium,
                            curve: Curves.easeInOut,
                          );
                        } else {
                          if (controller.currentPage.value == 1) {
                            controller.changePage(nextForm);
                            controller.pageController.animateToPage(
                              nextForm,
                              duration: Times.medium,
                              curve: Curves.easeInOut,
                            );
                          } else {
                            if (controller.currentPage.value == 2) {
                              controller.changePage(nextForm);
                              controller.pageController.animateToPage(
                                nextForm,
                                duration: Times.medium,
                                curve: Curves.easeInOut,
                              );
                            } else {
                              if (controller.currentPage.value == 3) {
                                controller.changePage(nextForm);
                                controller.pageController.animateToPage(
                                  nextForm,
                                  duration: Times.medium,
                                  curve: Curves.easeInOut,
                                );
                              }
                            }
                          }
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
