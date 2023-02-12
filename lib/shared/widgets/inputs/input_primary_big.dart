import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputPrimaryBig extends StatefulWidget {
  final String hintText;
  final String? Function(String?)? validate;
  final Function() onTap;
  final Function(String?)? onChange;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final FontStyle? hintFontStyle;
  final String label;
  final String? subLabel;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final bool obsecureText;
  final bool? enable;
  final dynamic maxLines;
  final dynamic maxLenght;
  final String? initialValue;
  final double? boxWidth;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedBorder;
  final EdgeInsets? contentPadding;
  final Color? inputColor;
  final TextStyle? hintStyles;
  final InputBorder? inputBorder;
  final String? info;
  final TextStyle? infoStyle;

  const InputPrimaryBig({
    Key? key,
    required this.hintText,
    this.validate,
    required this.onTap,
    this.onChange,
    this.prefixIcon,
    this.suffixIcon,
    this.hintFontStyle,
    this.label = '',
    this.subLabel = '',
    this.controller,
    this.keyboardType = TextInputType.text,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
    this.obsecureText = false,
    this.enable = true,
    this.maxLines = 1,
    this.maxLenght,
    this.initialValue,
    this.boxWidth,
    this.padding,
    this.margin,
    this.enabledBorder,
    this.errorBorder,
    this.focusedBorder,
    this.contentPadding,
    this.inputColor,
    this.hintStyles,
    this.inputBorder,
    this.info,
    this.infoStyle,
  }) : super(key: key);

  @override
  _InputPrimaryBigState createState() => _InputPrimaryBigState();
}

class _InputPrimaryBigState extends State<InputPrimaryBig> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        widget.label != ''
            ? Row(
                children: [
                  SizedBox(
                    child: Text(
                      widget.label,
                      style: TextStyles.inter.copyWith(
                        fontSize: FontSizes.s16,
                        fontWeight: FontWeight.w500,
                        color: AppColor.neutral.shade700,
                      ),
                    ),
                  ),
                  widget.subLabel != ''
                      ? Text(
                          widget.subLabel ?? 'Sub Label',
                          style: TextStyles.inter.copyWith(
                            fontSize: FontSizes.s16,
                            color: AppColor.neutral.shade400,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      : horizontalSpace(0),
                ],
              )
            : verticalSpace(0),
        Container(
          padding: widget.padding,
          margin: widget.margin,
          width: widget.boxWidth,
          child: TextFormField(
            initialValue: widget.initialValue,
            maxLines: widget.maxLines,
            maxLength: widget.maxLenght,
            enabled: widget.enable,
            enableInteractiveSelection: true,
            cursorColor: Theme.of(context).primaryColor,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onTap: widget.onTap,
            onChanged: widget.onChange,
            keyboardType: widget.keyboardType,
            controller: widget.controller,
            obscureText: widget.obsecureText,
            inputFormatters: widget.inputFormatters,
            textCapitalization: widget.textCapitalization,
            validator: widget.validate,
            style: TextStyles.inter.copyWith(
              fontSize: FontSizes.s16,
              color: AppColor.neutral.shade500,
            ),
            decoration: inputDecoration(
              hintText: widget.hintText,
              hintStyles: widget.hintStyles ??
                  TextStyles.inter.copyWith(
                    fontSize: FontSizes.s16,
                    color: AppColor.neutral.shade500,
                  ),
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
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
        widget.info != null
            ? Container(
                padding: EdgeInsets.only(bottom: Insets.xs),
                child: Text(
                  widget.info!,
                  style: widget.infoStyle ??
                      TextStyles.textSm.copyWith(
                        color: AppColor.neutral.shade400,
                      ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
