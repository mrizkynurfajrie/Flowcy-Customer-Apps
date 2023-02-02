import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';

class PageShadows extends StatelessWidget {
  const PageShadows({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      title: "Page Template",
      center: null,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shadows",
              style: TextStyles.textBaseBold,
            ),
            const Divider(),
            Text(
              "Bottom",
              style: TextStyles.textSmBold,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      border: Border.all(color: AppColor.bgPageColor),
                      boxShadow: Shadows.xsBottom,
                    ),
                    child: Center(
                      child: Text(
                        "XS",
                        style: TextStyles.textSmBold,
                      ),
                    ),
                  ),
                ),
                horizontalSpace(15),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      border: Border.all(color: AppColor.bgPageColor),
                      boxShadow: Shadows.smBottom,
                    ),
                    child: Center(
                      child: Text(
                        "SM",
                        style: TextStyles.textSmBold,
                      ),
                    ),
                  ),
                ),
                horizontalSpace(15),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      border: Border.all(color: AppColor.bgPageColor),
                      boxShadow: Shadows.mdBottom,
                    ),
                    child: Center(
                      child: Text(
                        "MD",
                        style: TextStyles.textSmBold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      border: Border.all(color: AppColor.bgPageColor),
                      boxShadow: Shadows.lgBottom,
                    ),
                    child: Center(
                      child: Text(
                        "LG",
                        style: TextStyles.textSmBold,
                      ),
                    ),
                  ),
                ),
                horizontalSpace(15),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      border: Border.all(color: AppColor.bgPageColor),
                      boxShadow: Shadows.xlBottom,
                    ),
                    child: Center(
                      child: Text(
                        "XL",
                        style: TextStyles.textSmBold,
                      ),
                    ),
                  ),
                ),
                horizontalSpace(15),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      border: Border.all(color: AppColor.bgPageColor),
                      boxShadow: Shadows.xl2Bottom,
                    ),
                    child: Center(
                      child: Text(
                        "2XL",
                        style: TextStyles.textSmBold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(20),
            Container(
              height: 100,
              width: 110,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                border: Border.all(color: AppColor.bgPageColor),
                boxShadow: Shadows.xl3Bottom,
              ),
              child: Center(
                child: Text(
                  "3XL",
                  style: TextStyles.textSmBold,
                ),
              ),
            ),
            const Divider(),
            Text(
              "Top",
              style: TextStyles.textSmBold,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      border: Border.all(color: AppColor.bgPageColor),
                      boxShadow: Shadows.xsTop,
                    ),
                    child: Center(
                      child: Text(
                        "XS",
                        style: TextStyles.textSmBold,
                      ),
                    ),
                  ),
                ),
                horizontalSpace(15),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      border: Border.all(color: AppColor.bgPageColor),
                      boxShadow: Shadows.smTop,
                    ),
                    child: Center(
                      child: Text(
                        "SM",
                        style: TextStyles.textSmBold,
                      ),
                    ),
                  ),
                ),
                horizontalSpace(15),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      border: Border.all(color: AppColor.bgPageColor),
                      boxShadow: Shadows.mdTop,
                    ),
                    child: Center(
                      child: Text(
                        "MD",
                        style: TextStyles.textSmBold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      border: Border.all(color: AppColor.bgPageColor),
                      boxShadow: Shadows.lgTop,
                    ),
                    child: Center(
                      child: Text(
                        "LG",
                        style: TextStyles.textSmBold,
                      ),
                    ),
                  ),
                ),
                horizontalSpace(15),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      border: Border.all(color: AppColor.bgPageColor),
                      boxShadow: Shadows.xlTop,
                    ),
                    child: Center(
                      child: Text(
                        "XL",
                        style: TextStyles.textSmBold,
                      ),
                    ),
                  ),
                ),
                horizontalSpace(15),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      border: Border.all(color: AppColor.bgPageColor),
                      boxShadow: Shadows.xl2Top,
                    ),
                    child: Center(
                      child: Text(
                        "2XL",
                        style: TextStyles.textSmBold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(20),
            Container(
              height: 100,
              width: 110,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                border: Border.all(color: AppColor.bgPageColor),
                boxShadow: Shadows.xl3Top,
              ),
              child: Center(
                child: Text(
                  "3XL",
                  style: TextStyles.textSmBold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}