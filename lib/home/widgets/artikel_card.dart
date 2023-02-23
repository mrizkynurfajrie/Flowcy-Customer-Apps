import 'package:flowcy_customer/shared/constans/assets.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ArtikelCard extends StatelessWidget {
  const ArtikelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 229,
      height: 151,
      decoration: BoxDecoration(
        boxShadow: Shadows.mdBottom,
        color: AppColor.whiteColor,
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
      child: Column(
        children: [
          Container(
            width: Get.width,
            height: 87,
            color: AppColor.neutral.shade100,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 80.w),
              child: AppIcons.iconApp(
                AppIcons.defaultImage,
              ),
            ),
          ),
          verticalSpace(4.h),
          SizedBox(
            width: Get.width,
            height: 60,
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
                    'Pemerintah mendukung flowcy',
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
                    'Mengawali 2023, Dinas Kebersihan Kota Samarinda memberikan investasi yang fantastis',
                    style: TextStyles.inter.copyWith(
                      fontSize: FontSizes.s10,
                      color: AppColor.neutral.shade500,
                    ),
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
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
