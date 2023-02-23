import 'package:flowcy_customer/features/profile/controller_profile.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PageProfile extends GetView<ControllerProfile> {
  const PageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      title: '',
      resizeAvoidBottom: true,
      toolbarColor: AppColor.whiteColor,
      backgroundColor: AppColor.whiteColor,
      toolbarTitleColor: AppColor.neutral.shade700,
      enableBack: false,
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 10.h,
      ),
      center: Center(
        child: Text(
          'Hi, -username-',
          style: TextStyles.inter.copyWith(
            fontSize: FontSizes.s18,
            color: AppColor.neutral.shade900,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Profile')
            ],
          ),
        ),
      ),
    );
  }
}
