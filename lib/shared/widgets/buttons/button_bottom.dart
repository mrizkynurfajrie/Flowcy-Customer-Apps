import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/buttons/button_primary.dart';
import 'package:flowcy_customer/shared/widgets/others/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonBottom extends StatelessWidget {
  final String label;
  final Function onTap;
  final bool enable;
  final bool isLoading;

  const ButtonBottom({
    Key? key,
    required this.label,
    required this.onTap,
    this.enable = true,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: Insets.xl, vertical: Insets.med),
        child: isLoading
            ? loadingIndicatorBottom(context)
            : ButtonPrimary(
                cornerRadius: 27.w,
                enable: enable,
                onPressed: () {
                  onTap();
                },
                label: label),
      ),
    );
  }
}
