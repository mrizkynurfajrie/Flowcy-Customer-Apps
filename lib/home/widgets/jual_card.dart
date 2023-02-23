import 'package:flowcy_customer/shared/constans/assets.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class JualCard extends StatelessWidget {
  const JualCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 205,
      height: 188,
      decoration: BoxDecoration(
        boxShadow: Shadows.mdBottom,
        color: AppColor.whiteColor,
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
      child: Column(
        children: [
          Container(
            width: Get.width,
            height: 140,
            color: AppColor.neutral.shade100,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 69.w),
              child: AppIcons.iconApp(
                AppIcons.defaultImage,
              ),
            ),
          ),
          verticalSpace(12.h),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
              vertical: 4.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Title
                Text(
                  'Jual Material',
                  style: TextStyles.inter.copyWith(
                    fontSize: FontSizes.s14,
                    color: AppColor.neutral.shade700,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                //Subtitle
              ],
            ),
          ),
        ],
      ),
    );
  }
}
