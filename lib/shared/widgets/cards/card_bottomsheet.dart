import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/cards/card_rounded_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardBottomsheet extends StatelessWidget {
  const CardBottomsheet({Key? key, required this.child, this.padding})
      : super(key: key);
  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding ??
            EdgeInsets.symmetric(vertical: Insets.sm, horizontal: Insets.lg),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Corners.xlRadius),
            color: AppColor.whiteColor),
        child: Stack(
          children: [
            Positioned(
              top: Insets.sm,
              right: Get.width * 0.35,
              left: Get.width * 0.35,
              child: SizedBox(
                height: Strokes.thick,
                child: CardRoundedBorder(
                  color: AppColor.neutral.shade200,
                  borderColor: AppColor.neutral.shade200,
                  padding: EdgeInsets.all(Insets.xs),
                  shadow: Shadows.none,
                  child: Container(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: Insets.med),
              child: child,
            )
          ],
        ));
  }
}
