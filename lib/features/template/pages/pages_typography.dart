import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';

class PageTypography extends StatelessWidget {
  const PageTypography({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      title: "Page Typography",
      center: null,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Typography",
              style: TextStyles.textBaseBold,
            ),
            // Text
            const Divider(),
            verticalSpace(10),
            Text(
              "Text Xxs",
              style: TextStyles.textSmBold,
            ),
            const Divider(),
            Text(
              "regular",
              style: TextStyles.textXxs,
            ),
            Text(
              "medium",
              style: TextStyles.textXxsMed,
            ),
            Text(
              "semibold",
              style: TextStyles.textXxsSemiBold,
            ),
            Text(
              "bold",
              style: TextStyles.textXxsBold,
            ),
            const Divider(),
            verticalSpace(10),
            Text(
              "Text Xs",
              style: TextStyles.textSmBold,
            ),
            const Divider(),
            Text(
              "regular",
              style: TextStyles.textXs,
            ),
            Text(
              "medium",
              style: TextStyles.textXsMed,
            ),
            Text(
              "semibold",
              style: TextStyles.textXsSemiBold,
            ),
            Text(
              "bold",
              style: TextStyles.textXsBold,
            ),
            const Divider(),
            verticalSpace(10),
            Text(
              "Text Sm",
              style: TextStyles.textSmBold,
            ),
            const Divider(),
            Text(
              "regular",
              style: TextStyles.textSm,
            ),
            Text(
              "medium",
              style: TextStyles.textSmMed,
            ),
            Text(
              "semibold",
              style: TextStyles.textSmSemiBold,
            ),
            Text(
              "bold",
              style: TextStyles.textSmBold,
            ),
            const Divider(),
            verticalSpace(10),
            Text(
              "Text Md",
              style: TextStyles.textSmBold,
            ),
            const Divider(),
            Text(
              "regular",
              style: TextStyles.textMd,
            ),
            Text(
              "medium",
              style: TextStyles.textMdMed,
            ),
            Text(
              "semibold",
              style: TextStyles.textMdSemiBold,
            ),
            Text(
              "bold",
              style: TextStyles.textMdBold,
            ),
            const Divider(),
            verticalSpace(10),
            Text(
              "Text Lg",
              style: TextStyles.textSmBold,
            ),
            const Divider(),
            Text(
              "regular",
              style: TextStyles.textLg,
            ),
            Text(
              "medium",
              style: TextStyles.textLgMed,
            ),
            Text(
              "semibold",
              style: TextStyles.textLgSemiBold,
            ),
            Text(
              "bold",
              style: TextStyles.textLgBold,
            ),
            const Divider(),
            verticalSpace(10),
            Text(
              "Text Xl",
              style: TextStyles.textSmBold,
            ),
            const Divider(),
            Text(
              "regular",
              style: TextStyles.textXl,
            ),
            Text(
              "medium",
              style: TextStyles.textXlMed,
            ),
            Text(
              "semibold",
              style: TextStyles.textXlSemiBold,
            ),
            Text(
              "bold",
              style: TextStyles.textXlBold,
            ),
            // Display
            const Divider(),
            verticalSpace(10),
            Text(
              "Display Xs",
              style: TextStyles.textSmBold,
            ),
            const Divider(),
            Text(
              "regular",
              style: TextStyles.displayXs,
            ),
            Text(
              "medium",
              style: TextStyles.displayXsMed,
            ),
            Text(
              "semibold",
              style: TextStyles.displayXsSemiBold,
            ),
            Text(
              "bold",
              style: TextStyles.displayXsBold,
            ),
            const Divider(),
            verticalSpace(10),
            Text(
              "Display Sm",
              style: TextStyles.textSmBold,
            ),
            const Divider(),
            Text(
              "regular",
              style: TextStyles.displaySm,
            ),
            Text(
              "medium",
              style: TextStyles.displaySmMed,
            ),
            Text(
              "semibold",
              style: TextStyles.displaySmSemiBold,
            ),
            Text(
              "bold",
              style: TextStyles.displaySmBold,
            ),
            const Divider(),
            verticalSpace(10),
            Text(
              "Display Md",
              style: TextStyles.textSmBold,
            ),
            const Divider(),
            Text(
              "regular",
              style: TextStyles.displayMd,
            ),
            Text(
              "medium",
              style: TextStyles.displayMdMed,
            ),
            Text(
              "semibold",
              style: TextStyles.displayMdSemiBold,
            ),
            Text(
              "bold",
              style: TextStyles.displayMdBold,
            ),
            const Divider(),
            verticalSpace(10),
            Text(
              "Display Lg",
              style: TextStyles.textSmBold,
            ),
            const Divider(),
            Text(
              "regular",
              style: TextStyles.displayLg,
            ),
            Text(
              "medium",
              style: TextStyles.displayLgMed,
            ),
            Text(
              "semibold",
              style: TextStyles.displayLgSemiBold,
            ),
            Text(
              "bold",
              style: TextStyles.displayLgBold,
            ),
            const Divider(),
            verticalSpace(10),
            Text(
              "Display Xl",
              style: TextStyles.textSmBold,
            ),
            const Divider(),
            Text(
              "regular",
              style: TextStyles.displayXl,
            ),
            Text(
              "medium",
              style: TextStyles.displayXlMed,
            ),
            Text(
              "semibold",
              style: TextStyles.displayXlSemiBold,
            ),
            Text(
              "bold",
              style: TextStyles.displayXlBold,
            ),
            const Divider(),
            verticalSpace(10),
            Text(
              "Display Xxl",
              style: TextStyles.textSmBold,
            ),
            const Divider(),
            Text(
              "regular",
              style: TextStyles.displayXxl,
            ),
            Text(
              "medium",
              style: TextStyles.displayXxlMed,
            ),
            Text(
              "semibold",
              style: TextStyles.displayXxlSemiBold,
            ),
            Text(
              "bold",
              style: TextStyles.displayXxlBold,
            ),
          ],
        ),
      ),
    );
  }
}
