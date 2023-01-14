import 'package:flowcy_customer/shared/constans/assets.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/buttons/button_primary.dart';
import 'package:flowcy_customer/shared/widgets/buttons/button_primary_outline.dart';
import 'package:flowcy_customer/shared/widgets/buttons/button_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

showPopUp({
  String? title,
  Color? titleColor,
  String? description,
  String? labelButton,
  String? imageUri,
  double? imageSize,
  bool? dismissible,
  Widget? widget,
  Function()? onPress,
  Color? outlineButtonColor,
  Color? labelButtonColor,
}) {
  Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: Corners.medBorder, color: Colors.white),
          child: Padding(
            padding: EdgeInsets.all(Insets.xl),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title ?? "",
                  style: TextStyles.subtitle1.copyWith(
                    color: titleColor ?? AppColor.neutral,
                  ),
                  textAlign: TextAlign.center,
                ),
                verticalSpace(Insets.xxl),
                imageUri != null
                    ? SvgPicture.asset(
                        imageUri,
                        height: imageSize ?? IconSizes.xxl,
                        width: imageSize ?? IconSizes.xxl,
                      )
                    : Container(),
                verticalSpace(Insets.xl),
                widget ?? Container(),
                Text(
                  description ?? "",
                  style: TextStyles.body2.copyWith(color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
                verticalSpace(Insets.xl),
                SizedBox(
                  child: labelButton != null
                      ? ButtonPrimaryOutline(
                          height: 45.h,
                          borderRadius: Corners.lg,
                          onPressed: onPress ?? () => Get.back(),
                          label: labelButton,
                          color: AppColor.whiteColor,
                          outlineColor:
                              outlineButtonColor ?? AppColor.primaryColor,
                          labelStyle: TextStyles.inter.copyWith(
                            fontSize: FontSizes.s12,
                            fontWeight: FontWeight.w500,
                            color: labelButtonColor ?? AppColor.primaryColor,
                          ),
                        )
                      : const SizedBox(),
                ),
              ],
            ),
          ),
        ),
      ),
      barrierDismissible: dismissible ?? true);
}

loadingDialog({
  bool? dismissible,
}) {
  Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
            child: LoadingAnimationWidget.prograssiveDots(
          color: AppColor.primaryColor,
          size: 50,
        )),
      ),
      barrierDismissible: dismissible ?? true);
}

showPopUpPng({
  String? title,
  String? description,
  String? labelButton,
  String? imageUri,
  double? imageSize,
  bool? dismissible,
  Widget? widget,
  Function()? onPress,
  Color? outlineButtonColor,
  Color? labelButtonColor,
}) {
  Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: Corners.medBorder, color: Colors.white),
          child: Padding(
            padding: EdgeInsets.all(Insets.xl),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title ?? "",
                  style: TextStyles.subtitle1,
                  textAlign: TextAlign.center,
                ),
                verticalSpace(Insets.xxl),
                imageUri != null
                    ? Image.asset(
                        imageUri,
                        height: imageSize ?? IconSizes.xxl,
                        width: imageSize ?? IconSizes.xxl,
                      )
                    : Container(),
                verticalSpace(Insets.xl),
                widget ?? Container(),
                Text(
                  description ?? "",
                  style: TextStyles.body2.copyWith(color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
                verticalSpace(Insets.xl),
                SizedBox(
                  child: labelButton != null
                      ? ButtonPrimaryOutline(
                          onPressed: onPress ?? () => Get.back(),
                          label: labelButton,
                          color: AppColor.whiteColor,
                          outlineColor:
                              outlineButtonColor ?? AppColor.primaryColor,
                          labelStyle: TextStyles.inter.copyWith(
                            fontSize: FontSizes.s12,
                            fontWeight: FontWeight.w500,
                            color: labelButtonColor ?? AppColor.primaryColor,
                          ),
                        )
                      : const SizedBox(),
                ),
              ],
            ),
          ),
        ),
      ),
      barrierDismissible: dismissible ?? true);
}

showPopUpError({
  Function()? onError,
  String? errorTitle,
  required String errorMessage,
}) {
  if (onError != null) onError();
  showPopUp(
      title: errorTitle ?? "Informasi",
      description: errorMessage,
      imageUri: PopUpIcons.error,
      labelButton: "Kembali",
      onPress: () {
        Get.back();
      });
}

showPopUpChoice({
  String? title,
  String? description,
  String? labelNegatif,
  String? labelPositif,
  String? imageUri,
  double? imageSize,
  bool? dismissible,
  TextStyle? titleStyle,
  Color? confirmColor,
  Color? cancelColor,
  Function()? onConfirm,
  Function()? onCancel,
}) {
  Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: Corners.lgBorder, color: Colors.white),
          child: Padding(
            padding: EdgeInsets.all(Insets.xl),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title ?? "",
                  style: titleStyle ?? TextStyles.subtitle1,
                  textAlign: TextAlign.center,
                ),
                verticalSpace(Insets.xl),
                if (imageUri != null)
                  SvgPicture.asset(
                    imageUri,
                    height: imageSize ?? IconSizes.xxl,
                    width: imageSize ?? IconSizes.xxl,
                  ),
                verticalSpace(Insets.xl),
                Text(
                  description ?? "",
                  style: TextStyles.body2.copyWith(color: AppColor.neutral.shade500),
                  textAlign: TextAlign.center,
                ),
                verticalSpace(Insets.xl),
                Row(
                  children: [
                    Expanded(
                      child: ButtonText(
                        onPressed: onCancel ?? () => Get.back(),
                        label: labelNegatif ?? "Batal",
                        textStyle: TextStyles.inter.copyWith(
                          fontSize: FontSizes.s14,
                          color: cancelColor ?? AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    horizontalSpace(Insets.xl),
                    Expanded(
                      child: ButtonPrimary(
                        onPressed: onConfirm ?? () => Get.back(),
                        label: labelPositif ?? "Ya",
                        color: confirmColor ?? AppColor.primaryColor,
                        labelStyle: TextStyles.inter.copyWith(
                          fontSize: FontSizes.s14,
                          color: AppColor.whiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                        cornerRadius: Corners.lg,
                        size: 120.w,
                        height: 45.h,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      barrierDismissible: dismissible ?? true);
}

showPopUpChoiceImageAbove({
  String? title,
  String? description,
  String? labelNegatif,
  String? labelPositif,
  String? imageUri,
  double? imageSize,
  bool? dismissible,
  TextStyle? titleStyle,
  Color? confirmColor,
  Color? cancelColor,
  Function()? onConfirm,
  Function()? onCancel,
}) {
  Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: Corners.lgBorder, color: Colors.white),
          child: Padding(
            padding: EdgeInsets.all(Insets.xl),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (imageUri != null)
                  SvgPicture.asset(
                    imageUri,
                    height: imageSize ?? IconSizes.xxl,
                    width: imageSize ?? IconSizes.xxl,
                  ),
                verticalSpace(Insets.xl),
                Text(
                  title ?? "",
                  style: titleStyle ?? TextStyles.subtitle1,
                  textAlign: TextAlign.center,
                ),
                verticalSpace(Insets.med),
                Text(
                  description ?? "",
                  style: TextStyles.body2.copyWith(color: AppColor.neutral.shade500),
                  textAlign: TextAlign.center,
                ),
                verticalSpace(Insets.xl),
                Row(
                  children: [
                    Expanded(
                      child: ButtonText(
                        onPressed: onCancel ?? () => Get.back(),
                        label: labelNegatif ?? "Batal",
                        textStyle: TextStyles.inter.copyWith(
                          fontSize: FontSizes.s14,
                          color: cancelColor ?? AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    horizontalSpace(Insets.xl),
                    Expanded(
                      child: ButtonPrimary(
                        onPressed: onConfirm ?? () => Get.back(),
                        label: labelPositif ?? "Ya",
                        color: confirmColor ?? AppColor.primaryColor,
                        labelStyle: TextStyles.inter.copyWith(
                          fontSize: FontSizes.s14,
                          color: AppColor.whiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                        cornerRadius: Corners.lg,
                        size: 120.w,
                        height: 45.h,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      barrierDismissible: dismissible ?? true);
}

showPopUpWidget({
  String? title,
  Widget? content,
  String? labelNegatif,
  String? labelPositif,
  String? imageUri,
  double? imageSize,
  bool? dismissible,
  TextStyle? titleStyle,
  Color? buttonColor,
  Color? textColor,
  Function()? onConfirm,
  Function()? onCancel,
}) {
  Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: Corners.lgBorder, color: Colors.white),
          child: Padding(
            padding: EdgeInsets.all(Insets.xl),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title ?? "",
                  style: titleStyle ?? TextStyles.subtitle1,
                  textAlign: TextAlign.center,
                ),
                verticalSpace(Insets.xl),
                if (imageUri != null)
                  SvgPicture.asset(
                    imageUri,
                    height: imageSize ?? IconSizes.xxl,
                    width: imageSize ?? IconSizes.xxl,
                  ),
                content ?? const SizedBox(),
                verticalSpace(Insets.xl),
                Row(
                  children: [
                    Expanded(
                      child: ButtonText(
                        onPressed: onCancel ?? () => Get.back(),
                        label: labelNegatif ?? "Batal",
                        textStyle: TextStyles.inter.copyWith(
                          fontSize: FontSizes.s14,
                          color: AppColor.neutral,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    horizontalSpace(Insets.xl),
                    Expanded(
                      child: ButtonPrimary(
                        onPressed: onConfirm ?? () => Get.back(),
                        label: labelPositif ?? "Ya",
                        color: buttonColor ?? AppColor.error,
                        labelStyle: TextStyles.inter.copyWith(
                          fontSize: FontSizes.s14,
                          color: textColor ?? AppColor.whiteColor,
                          fontWeight: FontWeight.w500,
                        ),
                        cornerRadius: Corners.lg,
                        size: 120.w,
                        height: 45.h,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      barrierDismissible: dismissible ?? true);
}

showPopUpChoiceMidTitle({
  String? title,
  Color? titleColor,
  String? description,
  String? labelNegatif,
  String? labelPositif,
  String? imageUri,
  double? imageSize,
  bool? dismissible,
  Color? confirmButtonColor,
  Color? confirmTextColor,
  TextStyle? titleStyle,
  Function()? onConfirm,
  Function()? onCancel,
}) {
  Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: Corners.lgBorder, color: Colors.white),
          child: Padding(
            padding: EdgeInsets.all(Insets.xl),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (imageUri != null)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      imageUri,
                      height: imageSize ?? IconSizes.xxl,
                      width: imageSize ?? IconSizes.xxl,
                    ),
                  ),
                Text(
                  title ?? "",
                  style: titleStyle ??
                      TextStyles.inter.copyWith(
                        fontSize: FontSizes.s18,
                        fontWeight: FontWeight.w500,
                        color: titleColor ?? AppColor.primaryColor,
                      ),
                  textAlign: TextAlign.center,
                ),
                verticalSpace(5.h),
                Text(
                  description ?? "",
                  style: TextStyles.inter.copyWith(
                    fontSize: FontSizes.s12,
                    fontWeight: FontWeight.w400,
                    color: AppColor.neutral.shade700,
                  ),
                  textAlign: TextAlign.center,
                ),
                verticalSpace(Insets.xl),
                Row(
                  children: [
                    Expanded(
                      child: ButtonText(
                        onPressed: onCancel ?? () => Get.back(),
                        label: labelNegatif ?? "Batal",
                        textStyle: TextStyles.inter.copyWith(
                          fontSize: FontSizes.s14,
                          color: AppColor.neutral,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    horizontalSpace(Insets.xl),
                    Expanded(
                      child: ButtonPrimary(
                        onPressed: onConfirm ?? () => Get.back(),
                        label: labelPositif ?? "Ya",
                        color: confirmButtonColor ?? AppColor.primaryColor,
                        labelStyle: TextStyles.inter.copyWith(
                          fontSize: FontSizes.s14,
                          color: confirmTextColor ?? AppColor.whiteColor,
                          fontWeight: FontWeight.w500,
                        ),
                        cornerRadius: Corners.lg,
                        size: 120.w,
                        height: 45.h,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      barrierDismissible: dismissible ?? true);
}

showPopUpChoiceRegister({
  String? title,
  String? description,
  String? labelNegatif,
  String? labelPositif,
  String? imageUri,
  double? imageSize,
  bool? dismissible,
  TextStyle? titleStyle,
  Widget? confirm,
  Function()? onConfirm,
  Function()? onCancel,
}) {
  Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: Corners.lgBorder, color: Colors.white),
          child: Padding(
            padding: EdgeInsets.all(Insets.xl),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title ?? "",
                  style: titleStyle ?? TextStyles.subtitle1,
                  textAlign: TextAlign.center,
                ),
                verticalSpace(Insets.xl),
                if (imageUri != null)
                  SvgPicture.asset(
                    imageUri,
                    height: imageSize ?? IconSizes.xxl,
                    width: imageSize ?? IconSizes.xxl,
                  ),
                Text(
                  description ?? "",
                  style: TextStyles.body2.copyWith(color: AppColor.neutral.shade500),
                  textAlign: TextAlign.center,
                ),
                verticalSpace(Insets.xl),
                Row(
                  children: [
                    Expanded(
                      child: ButtonPrimary(
                        onPressed: onCancel ?? () => Get.back(),
                        label: labelNegatif ?? "Batal",
                        labelStyle: TextStyles.inter.copyWith(
                          fontSize: FontSizes.s14,
                          color: AppColor.whiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                        cornerRadius: Corners.lg,
                        size: 120.w,
                        height: 45.h,
                      ),
                    ),
                    horizontalSpace(Insets.xl),
                    Expanded(
                      child: confirm ??
                          ButtonPrimary(
                            onPressed: onConfirm ?? () => Get.back(),
                            label: labelPositif ?? "Ya",
                            color: AppColor.whiteColor,
                            borderColor: AppColor.primaryColor,
                            labelStyle: TextStyles.inter.copyWith(
                              fontSize: FontSizes.s14,
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                            cornerRadius: Corners.lg,
                            size: 120.w,
                            height: 45.h,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      barrierDismissible: dismissible ?? true);
}

showPopUpChoicePng({
  String? title,
  String? description,
  String? labelNegatif,
  String? labelPositif,
  String? imageUri,
  double? imageSize,
  bool? dismissible,
  Function()? onConfirm,
  Function()? onCancel,
}) {
  Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: Corners.lgBorder, color: Colors.white),
          child: Padding(
            padding: EdgeInsets.all(Insets.xl),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title ?? "",
                  style: TextStyles.subtitle1,
                  textAlign: TextAlign.center,
                ),
                verticalSpace(Insets.xl),
                if (imageUri != null)
                  Image.asset(
                    imageUri,
                    height: imageSize ?? IconSizes.xxl,
                    width: imageSize ?? IconSizes.xxl,
                  ),
                Text(
                  description ?? "",
                  style: TextStyles.body2.copyWith(color: AppColor.neutral.shade500),
                  textAlign: TextAlign.center,
                ),
                verticalSpace(Insets.xl),
                Row(
                  children: [
                    Expanded(
                      child: ButtonPrimary(
                        onPressed: onCancel ?? () => Get.back(),
                        label: labelNegatif ?? "Batal",
                        cornerRadius: Corners.lg,
                        labelStyle: TextStyles.inter.copyWith(
                          fontSize: FontSizes.s14,
                          color: AppColor.whiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    horizontalSpace(Insets.xl),
                    Expanded(
                      child: ButtonPrimary(
                        onPressed: onConfirm ?? () => Get.back(),
                        label: labelPositif ?? "Ya",
                        cornerRadius: Corners.lg,
                        color: AppColor.whiteColor,
                        borderColor: AppColor.primaryColor,
                        labelStyle: TextStyles.inter.copyWith(
                          fontSize: FontSizes.s14,
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      barrierDismissible: dismissible ?? true);
}

featureDialog({
  Widget? title,
  String? description,
  String? labelButton,
  String? imageUri,
  double? imageSize,
  bool? dismissible,
  Widget? widget,
  Function()? onPress,
  Color? outlineButtonColor,
  Color? labelButtonColor,
}) {
  Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: Corners.medBorder, color: Colors.white),
          child: Padding(
            padding: EdgeInsets.zero,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                title ?? const SizedBox(),
                verticalSpace(Insets.xl),
                imageUri != null
                    ? SvgPicture.asset(
                        imageUri,
                        height: imageSize ?? IconSizes.xxl,
                        width: imageSize ?? IconSizes.xxl,
                      )
                    : Container(),
                verticalSpace(Insets.xl),
                widget ?? Container(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    description ?? "",
                    style: TextStyles.body2.copyWith(color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                ),
                verticalSpace(Insets.xl),
                SizedBox(
                  child: labelButton != null
                      ? ButtonPrimaryOutline(
                          onPressed: onPress ?? () => Get.back(),
                          label: labelButton,
                          color: AppColor.whiteColor,
                          outlineColor:
                              outlineButtonColor ?? AppColor.primaryColor,
                          labelStyle: TextStyles.inter.copyWith(
                            fontSize: FontSizes.s12,
                            fontWeight: FontWeight.w500,
                            color: labelButtonColor ?? AppColor.primaryColor,
                          ),
                        )
                      : const SizedBox(),
                ),
              ],
            ),
          ),
        ),
      ),
      barrierDismissible: dismissible ?? true);
}

showToast(
    {required String message,
    Color? color,
    Color? textColor,
    ToastGravity? gravity}) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: gravity ?? ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: color ?? AppColor.primaryColor.withOpacity(.4),
      textColor: textColor ?? AppColor.neutral,
      fontSize: 12);
}

showPopUpImage({
  String? imageUri,
}) {
  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(borderRadius: Corners.lgBorder),
      child: Container(
        padding: EdgeInsets.zero,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: Corners.lgBorder),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            imageUri != null
                ? Image.network(
                    imageUri,
                    fit: BoxFit.cover,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    ),
    barrierDismissible: true,
  );
}

showPopUpDetailUser({
  required String? imageUri,
  required String? name,
  required String? city,
  required String? gender,
  required String? phone,
}) {
  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(borderRadius: Corners.lgBorder),
      child: Container(
        padding: EdgeInsets.zero,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: Corners.lgBorder),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: Insets.xl),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              imageUri != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: SizedBox(
                        height: 140,
                        width: 140,
                        child: Image.network(
                          imageUri,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  : const SizedBox(),
              verticalSpace(10.h),
              Text(
                name ?? '',
                style: TextStyles.inter.copyWith(
                  fontSize: FontSizes.s18,
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              verticalSpace(14.h),
              Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Kab/Kota',
                      style: TextStyles.inter.copyWith(
                        fontSize: FontSizes.s12,
                        color: AppColor.neutral.shade800,
                      ),
                    ),
                  ),
                  Text(
                    city ?? '',
                    style: TextStyles.inter.copyWith(
                      fontSize: FontSizes.s12,
                      color: AppColor.neutral.shade800,
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: AppColor.neutral.shade300,
              ),
              verticalSpace(3.h),
              Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Jenis Kelamin',
                      style: TextStyles.inter.copyWith(
                        fontSize: FontSizes.s12,
                        color: AppColor.neutral.shade800,
                      ),
                    ),
                  ),
                  Text(
                    gender ?? '',
                    style: TextStyles.inter.copyWith(
                      fontSize: FontSizes.s12,
                      color: AppColor.neutral.shade800,
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: AppColor.neutral.shade300,
              ),
              verticalSpace(3.h),
              Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Nomor Ponsel',
                      style: TextStyles.inter.copyWith(
                        fontSize: FontSizes.s12,
                        color: AppColor.neutral.shade800,
                      ),
                    ),
                  ),
                  Text(
                    '0$phone',
                    style: TextStyles.inter.copyWith(
                      fontSize: FontSizes.s12,
                      color: AppColor.neutral.shade800,
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: AppColor.neutral.shade300,
              ),
              verticalSpace(24.h),
              ButtonPrimaryOutline(
                onPressed: () => Get.back(),
                label: 'Kembali',
                outlineColor: AppColor.neutral.shade400,
                labelStyle: TextStyles.inter.copyWith(
                  fontSize: FontSizes.s16,
                  color: AppColor.neutral.shade700,
                  fontWeight: FontWeight.w500,
                ),
                borderRadius: Corners.lg,
                width: Get.width,
                height: 45.h,
              ),
            ],
          ),
        ),
      ),
    ),
    barrierDismissible: true,
  );
}

dialogUpdateApp({
  String? title,
  String? desc,
  String labelUpdate = "Update",
  String labelCancel = "Nanti Saja",
  Function()? onConfirm,
  Function()? onCancel,
}) {
  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(borderRadius: Corners.lgBorder),
      child: Container(
        padding: EdgeInsets.only(
          top: Insets.xl,
          left: Insets.xl,
          right: Insets.xl,
          bottom: Insets.xl,
        ),
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: Corners.lgBorder),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(title ?? '',
                  style: TextStyles.textLg.apply(
                    color: AppColor.neutral,
                  )),
            ),
            verticalSpace(Insets.sm),
            desc != null
                ? Text(desc, style: TextStyles.textSm)
                : const SizedBox(),
            verticalSpace(Insets.xl),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ButtonText(
                  onPressed: onCancel != null
                      ? () {
                          onCancel();
                        }
                      : () => Get.back(),
                  label: labelCancel,
                  textStyle: TextStyles.textSm.copyWith(
                    height: 1.71,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                horizontalSpace(Insets.lg),
                ButtonText(
                  color: AppColor.primaryColor,
                  onPressed: onConfirm != null
                      ? () {
                          onConfirm();
                        }
                      : () => Get.back(),
                  label: labelUpdate,
                  textStyle: TextStyles.textSm.copyWith(
                    height: 1.71,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ),
    barrierDismissible: false,
  );
}

dialogError({var errorTitle, required var message}) {
  Get.defaultDialog(
      title: errorTitle ?? "Terjadi Kesalahan",
      content: Column(
        children: <Widget>[
          Text(
            message ?? "Informasi",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.h),
          ButtonPrimary(
              onPressed: () => Get.back(),
              size: Get.width * 0.5,
              label: 'Kembali')
        ],
      ));
}