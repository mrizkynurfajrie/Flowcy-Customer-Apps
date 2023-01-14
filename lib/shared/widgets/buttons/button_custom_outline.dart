import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonCustomOutline extends StatelessWidget {
  const ButtonCustomOutline({
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
    this.outlineColor,
    this.elevation,
    this.borderRadius,
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
  final Color? outlineColor;
  final double? elevation;
  final double? borderRadius;

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
              padding: EdgeInsets.zero,
              elevation: elevation ?? 1,
              backgroundColor: color ?? AppColor.whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(borderRadius ?? 0)),
                side: BorderSide(
                    color: enable
                        ? outlineColor ?? Theme.of(context).primaryColor
                        : AppColor.neutral.shade300,
                    width: Strokes.thin),
              ),
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
                        color: AppColor.primaryColor,
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
              ],
            )));
  }
}
