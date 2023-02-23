import 'package:flowcy_customer/shared/constans/assets.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/menus/menu_item_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar(
      {Key? key, required this.selectedIndex, required this.onTap})
      : super(key: key);

  final Function(int index) onTap;
  final int selectedIndex;

  Widget _itemMenu(
    BuildContext context, {
    required Function() onTap,
    required String label,
    required bool isSelected,
    required String iconPrimary,
    required Color primaryColor,
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: Sizes.med,
            height: Sizes.med,
            // margin: EdgeInsets.only(bottom: Insets.xs),
            child: MenuItemImage(
              primaryIcon: iconPrimary,
              primaryColor:
                  isSelected ? primaryColor : AppColor.neutral.shade300,
            ),
            // child: SvgPicture.asset(
            //   icon,
            //   color: isSelected
            //       ? Color(int.parse("0xFF" +
            //           Get.find<ControllerUserInfo>().issuerPrimaryColor.value))
            //       : AppColor.bodyColor.shade400,
            // ),
          ),
          Text(
            label,
            style: TextStyles.inter.copyWith(
              color: isSelected
                  ? AppColor.primaryColor
                  : AppColor.neutral.shade500,
              fontSize: FontSizes.s12,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          height: (IconSizes.xxl - 10.w),
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0xFFEBEBEB),
                spreadRadius: 0,
                blurRadius: 9,
                offset: Offset(0, -2),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: _itemMenu(
                  context,
                  onTap: () {
                    onTap(0);
                  },
                  label: 'Beranda',
                  isSelected: selectedIndex == 0,
                  iconPrimary: AppIcons.home,
                  primaryColor: selectedIndex == 0
                      ? AppColor.primaryColor
                      : AppColor.neutral.shade400,
                ),
              ),
              Expanded(
                child: _itemMenu(
                  context,
                  onTap: () {
                    onTap(1);
                  },
                  label: 'Aktivitas',
                  isSelected: selectedIndex == 1,
                  iconPrimary: AppIcons.activity,
                  primaryColor: selectedIndex == 1
                      ? AppColor.primaryColor
                      : AppColor.neutral.shade400,
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              // Stack(
              //   children: [
              //     _itemMenu(
              //       context,
              //       onTap: () {
              //         onTap(1);
              //       },
              //       label: 'Aktivitas'.tr,
              //       isSelected: selectedIndex == 1,
              //       iconPrimary: AppIcons.actMainActivity,
              //       primaryColor: selectedIndex == 1
              //           ? AppColor.primaryColor
              //           : AppColor.neutral.shade600,
              //     ),
              //     GetBuilder<ControllerRiderInfo>(
              //       builder: (control) => Positioned(
              //         top: 2.w,
              //         right: 0,
              //         child: Get.find<ControllerRiderInfo>().hasActivePost.isTrue
              //             ? Icon(
              //                 Icons.brightness_1,
              //                 size: 8.0.w,
              //                 color: AppColor.primaryColor,
              //               )
              //             : Container(),
              //       ),
              //     )
              //   ],
              // ),
              Expanded(
                child: _itemMenu(
                  context,
                  onTap: () {
                    onTap(2);
                  },
                  label: 'Notifikasi',
                  isSelected: selectedIndex == 2,
                  iconPrimary: AppIcons.notification,
                  primaryColor: selectedIndex == 2
                      ? AppColor.primaryColor
                      : AppColor.neutral.shade600,
                ),
              ),
              Expanded(
                child: _itemMenu(
                  context,
                  onTap: () {
                    onTap(3);
                  },
                  label: 'Profil',
                  isSelected: selectedIndex == 3,
                  iconPrimary: AppIcons.profile,
                  primaryColor: selectedIndex == 3
                      ? AppColor.primaryColor
                      : AppColor.neutral.shade600,
                ),
              ),
            ],
          ),
        ),
        // GestureDetector(
        //   onTap: () {},
        //   child: Container(
        //     width: 56,
        //     height: 56,
        //     margin: EdgeInsets.only(bottom: 20.h),
        //     decoration: BoxDecoration(
        //       borderRadius: const BorderRadius.all(Radius.circular(71.82)),
        //       color: AppColor.neutral.shade500,
        //     ),
        //     child: Padding(
        //       padding: EdgeInsets.symmetric(
        //         horizontal: 16.w,
        //         vertical: 16.h,
        //       ),
        //       child: AppIcons.iconApp(
        //         AppIcons.scan,
        //         color: AppColor.whiteColor,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
