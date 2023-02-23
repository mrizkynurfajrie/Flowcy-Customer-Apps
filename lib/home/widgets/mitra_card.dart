import 'package:flowcy_customer/shared/constans/assets.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MitraCard extends StatelessWidget {
  const MitraCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 158,
      decoration: BoxDecoration(
        boxShadow: Shadows.mdBottom,
        color: AppColor.whiteColor,
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
      child: Column(
        children: [
          Container(
            width: Get.width,
            height: 114,
            color: AppColor.neutral.shade100,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 27.h, horizontal: 24.w),
              child: AppIcons.iconApp(
                AppIcons.defaultImage,
              ),
            ),
          ),
          verticalSpace(4.h),
          SizedBox(
            width: Get.width,
            height: 40,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.w,
                vertical: 4.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Title
                  Text(
                    'Bank Sampah Samarinda',
                    style: TextStyles.inter.copyWith(
                      fontSize: FontSizes.s10,
                      color: AppColor.neutral.shade700,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  //Subtitle
                  verticalSpace(4.h),
                  Text(
                    'Kota Samarinda',
                    style: TextStyles.inter.copyWith(
                      fontSize: FontSizes.s10,
                      color: AppColor.neutral.shade500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
