import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({
    Key? key,
    required this.onPressed,
    required this.label,
    this.size,
    this.color,
    this.labelStyle,
    this.height,
    this.margin,
    this.padding,
    this.enable = true,
    this.icon,
    this.iconSize,
    this.iconColor,
    this.cornerRadius,
    this.borderColor,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixIconColor,
    this.suffixIconColor,
  }) : super(key: key);

  final Function() onPressed;
  final Color? color;
  final bool enable;
  final double? height;
  final String? icon;
  final double? iconSize;
  final Color? iconColor;
  final String label;
  final TextStyle? labelStyle;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final double? size;
  final double? cornerRadius;
  final Color? borderColor;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color? prefixIconColor;
  final Color? suffixIconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin ?? EdgeInsets.zero,
        padding: padding ?? EdgeInsets.zero,
        height: height ?? IconSizes.xxl - 6,
        width: size ?? double.infinity,
        child: ElevatedButton(
            onPressed: enable ? onPressed : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: enable
                  ? color ?? Theme.of(context).primaryColor
                  : AppColor.bodyColor.shade300,
              shape: RoundedRectangleBorder(
                  borderRadius: cornerRadius != null
                      ? BorderRadius.all(Radius.circular(cornerRadius!))
                      : Corners.xxlBorder * 2,
                  side: BorderSide(
                      color: borderColor ?? AppColor.transparentColor)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                prefixIcon != null
                    ? Padding(
                        padding: EdgeInsets.only(right: 4.w),
                        child: Icon(
                          prefixIcon,
                          size: iconSize ?? IconSizes.lg,
                          color: prefixIconColor ?? AppColor.neutral,
                        ),
                      )
                    : horizontalSpace(0),
                Text(
                  label,
                  style: labelStyle ??
                      TextStyles.inter.copyWith(
                        fontSize: FontSizes.s12,
                        color: AppColor.whiteColor,
                        fontWeight: FontWeight.w600,
                      ),
                  textAlign: TextAlign.center,
                ),
                suffixIcon != null
                    ? Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Icon(
                          suffixIcon,
                          size: iconSize ?? IconSizes.lg,
                          color: suffixIconColor ?? AppColor.neutral,
                        ),
                      )
                    : horizontalSpace(0),
                icon != null
                    ? Padding(
                        padding: EdgeInsets.only(left: 8.w),
                        child: SvgPicture.asset(
                          icon!,
                          width: iconSize ?? IconSizes.lg,
                          height: iconSize ?? IconSizes.lg,
                          color: iconColor ?? AppColor.neutral,
                        ),
                      )
                    : horizontalSpace(0),
              ],
            )));
  }
}
