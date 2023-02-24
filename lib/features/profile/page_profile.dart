import 'package:cached_network_image/cached_network_image.dart';
import 'package:flowcy_customer/features/profile/controller_profile.dart';
import 'package:flowcy_customer/routes/app_routes.dart';
import 'package:flowcy_customer/shared/constans/assets.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class PageProfile extends GetView<ControllerProfile> {
  const PageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(12.h),
                //Widget 1 - User Profile//
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: SizedBox(
                        height: IconSizes.profPict,
                        width: IconSizes.profPict,
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: '',
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) => Shimmer(
                            gradient: AppColor.shimmerGradient,
                            child: Container(
                              color: AppColor.whiteColor,
                            ),
                          ),
                          errorWidget: (context, url, error) =>
                              SvgPicture.asset(
                            AppIcons.defaultImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    horizontalSpace(8.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Username',
                          style: TextStyles.inter.copyWith(
                            fontSize: FontSizes.s16,
                            color: AppColor.neutral.shade700,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Phone Number',
                          style: TextStyles.inter.copyWith(
                            fontSize: FontSizes.s16,
                            color: AppColor.neutral.shade600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                verticalSpace(28.h),
                //Widget 2 - Menu Button//
                Column(
                  children: [
                    //Data Pribadi//
                    MenuProfileButton(
                      ontap: () => Get.toNamed(Routes.datapribadiPage),
                      icon: AppIcons.datapribadi,
                      title: 'Data Pribadi',
                    ),
                    //Riwayat//
                    verticalSpace(24.h),
                    MenuProfileButton(
                      ontap: () {},
                      icon: AppIcons.riwayat,
                      title: 'Riwayat',
                    ),
                    //Divder - 1//
                    verticalSpace(12.h),
                    Divider(
                      thickness: 1,
                      color: AppColor.neutral.shade200,
                    ),
                    //Menjadi Mitra Kami//
                    verticalSpace(12.h),
                    MenuProfileButton(
                      ontap: () {},
                      icon: AppIcons.menjadimitra,
                      title: 'Menjadi Mitra Kami',
                    ),
                    //Bagikan Aplikasi//
                    verticalSpace(24.h),
                    MenuProfileButton(
                      ontap: () {},
                      icon: AppIcons.bagikan,
                      title: 'Bagikan Aplikasi',
                    ),
                    //Tentang//
                    verticalSpace(24.h),
                    MenuProfileButton(
                      ontap: () => Get.toNamed(Routes.bantuanPage),
                      icon: AppIcons.tentang,
                      title: 'Bantuan',
                    ),
                    //Divder - 2//
                    verticalSpace(12.h),
                    Divider(
                      thickness: 1,
                      color: AppColor.neutral.shade200,
                    ),
                    //Keluar Akun//
                    verticalSpace(12.h),
                    MenuProfileButton(
                      ontap: () {},
                      icon: AppIcons.keluar,
                      title: 'Keluar Akun',
                    ),
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

class MenuProfileButton extends StatelessWidget {
  final Function() ontap;
  final String? icon;
  final String title;

  const MenuProfileButton({
    Key? key,
    required this.ontap,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 32,
            width: 32,
            padding: EdgeInsets.symmetric(
              horizontal: 6.w,
              vertical: 6.h,
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              color: AppColor.neutral.shade100,
            ),
            child: SvgPicture.asset(
              icon!,
            ),
          ),
          horizontalSpace(10.h),
          Text(
            title,
            style: TextStyles.inter.copyWith(
              fontSize: FontSizes.s14,
              fontWeight: FontWeight.w500,
              color: AppColor.neutral.shade700,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
