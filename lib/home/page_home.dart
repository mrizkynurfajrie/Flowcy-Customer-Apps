import 'package:carousel_slider/carousel_slider.dart';
import 'package:flowcy_customer/home/controller_home.dart';
import 'package:flowcy_customer/home/widgets/artikel_card.dart';
import 'package:flowcy_customer/home/widgets/jual_card.dart';
import 'package:flowcy_customer/home/widgets/mitra_card.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PageHome extends GetView<ControllerHome> {
  const PageHome({super.key});

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
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 14.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Widget 1 - Mitra Location Card//
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Di Kotamu',
                      style: TextStyles.inter.copyWith(
                        fontSize: FontSizes.s10,
                        color: AppColor.neutral,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    verticalSpace(12.h),
                    Container(
                      height: 162,
                      color: AppColor.whiteColor,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.only(right: 12.w, bottom: 3.h),
                          child: const MitraCard(),
                        ),
                      ),
                    ),
                  ],
                ),
                //Widget 2 - Jual Card//
                verticalSpace(19.h),
                const JualCard(),
                //Widget 3 - Artikel Card//
                verticalSpace(19.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Artikel',
                      style: TextStyles.inter.copyWith(
                        fontSize: FontSizes.s10,
                        color: AppColor.neutral,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    verticalSpace(12.h),
                    Container(
                      height: 154,
                      color: AppColor.whiteColor,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.only(right: 10.w, bottom: 3.h),
                          child: const ArtikelCard(),
                        ),
                      ),
                    ),
                    //vertical space for floating action bottom//
                    verticalSpace(20.h),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
