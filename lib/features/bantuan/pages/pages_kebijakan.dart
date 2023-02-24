import 'package:flowcy_customer/features/data_pribadi/controller_data_pribadi.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PagesKebijakan extends GetView<ControllerDataPribadi> {
  const PagesKebijakan({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      resizeAvoidBottom: true,
      title: "",
      toolbarColor: AppColor.whiteColor,
      backgroundColor: AppColor.whiteColor,
      toolbarTitleColor: AppColor.neutral.shade700,
      enableBack: true,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      center: Padding(
        padding: const EdgeInsets.only(left: 113.5),
        child: Column(
          children: [
            Text(
              'Kebijakan',
              style: TextStyles.inter.copyWith(
                fontSize: FontSizes.s18,
                color: AppColor.neutral.shade900,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
