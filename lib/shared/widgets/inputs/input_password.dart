import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/helpers/regex.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputPassword extends StatefulWidget {
  final String hintText;
  final String? Function(String?)? validate;
  final Function(String) onChange;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String label;
  final TextStyle? labelStyle;
  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final double? boxWidth;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final FontStyle? hintFontStyle;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedBorder;
  final EdgeInsets? contentPadding;
  final Color? inputColor;
  final TextStyle? hintStyles;
  final InputBorder? inputBorder;

  const InputPassword({
    Key? key,
    this.hintText = '',
    this.validate,
    required this.onChange,
    this.prefixIcon,
    this.suffixIcon,
    this.label = '',
    this.labelStyle,
    required this.controller,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
    this.boxWidth,
    this.padding,
    this.margin,
    this.hintFontStyle,
    this.enabledBorder,
    this.errorBorder,
    this.focusedBorder,
    this.contentPadding,
    this.inputBorder,
    this.inputColor,
    this.hintStyles,
  }) : super(key: key);

  @override
  _InputPasswordState createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  bool _obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.label != ''
              ? Container(
                  margin: EdgeInsets.only(
                    bottom: Insets.xs,
                    left: 4.w,
                  ),
                  child: Text(
                    widget.label,
                    style: widget.labelStyle ?? TextStyles.small1,
                  ),
                )
              : verticalSpace(0),
          Container(
            padding: widget.padding ?? EdgeInsets.zero,
            margin: widget.margin ?? EdgeInsets.zero,
            width: widget.boxWidth,
            child: TextFormField(
              enableInteractiveSelection: true,
              cursorColor: Theme.of(context).primaryColor,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onChanged: widget.onChange,
              keyboardType: TextInputType.text,
              controller: widget.controller,
              obscureText: _obsecureText,
              inputFormatters: widget.inputFormatters,
              textCapitalization: widget.textCapitalization,
              validator: widget.validate ??
                  (value) {
                    if (!isValidPassword(password: value.toString())) {
                      return '- Kata Sandi minimal 8 karakter\n'
                          // '- Diawali huruf kapital\n' +
                          '- Terdiri dari kombinasi huruf & angka';
                      // dan symbol (!@#\$%^&*(),.?":{}|<>])';
                    }
                    return null;
                  },
              style: TextStyles.inter.copyWith(
                  fontSize: FontSizes.s18, fontWeight: FontWeight.w400),
              decoration: inputDecoration(
                hintText: widget.hintText,
                hintStyles: widget.hintStyles ??
                    TextStyles.inter.copyWith(
                      fontSize: FontSizes.s16,
                      color: AppColor.neutral.shade500,
                    ),
                prefixIcon: widget.prefixIcon,
                suffixIcon: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: onTap,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 12.h,
                      horizontal: 12.w,
                    ),
                    child: _obsecureText
                        ? Icon(
                            Icons.visibility_off,
                            size: IconSizes.sm,
                          )
                        : Icon(
                            Icons.visibility,
                            size: IconSizes.sm,
                          ),
                  ),
                ),
                fontStyle: widget.hintFontStyle,
                enabledBorder: widget.enabledBorder,
                focusedBorder: widget.focusedBorder,
                errorBorder: widget.errorBorder,
                border: widget.inputBorder,
                contentPadding: widget.contentPadding,
                color: widget.inputColor ?? AppColor.whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onTap() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }
}
