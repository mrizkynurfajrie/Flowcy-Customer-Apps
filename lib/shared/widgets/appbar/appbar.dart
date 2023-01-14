import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final Widget? icon;
  final Widget? center;
  final bool? centerTitle;
  final Widget? bottom;
  final Widget? flexibleSpace;
  final bool ? autocally;
  final double? titleSpacing;
  final Color? color;
  final Color? colorTitle;
  final Widget? leadingIcon;
  final List<Widget>? actions;
  final double elevation;
  final Function()? onBackPressed;
  final bool useLeading;
  const CustomAppBar(
      {Key? key,
      this.leadingIcon,
      required this.title,
      this.color,
      this.colorTitle,
      this.icon,
      this.center,
      this.centerTitle,
      this.bottom,
      this.flexibleSpace,
      this.actions,
      this.elevation = 0,
      this.onBackPressed,
      this.autocally,
      this.titleSpacing,
      this.useLeading = false})
      : super(key: key);

  @override
  final Size preferredSize =
      const Size.fromHeight(kToolbarHeight); // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: widget.titleSpacing ?? 0 ,
      automaticallyImplyLeading: widget.autocally ?? false,
      elevation: widget.elevation,
      backgroundColor: widget.color ?? Theme.of(context).primaryColor,
      leading: widget.useLeading
          ? widget.leadingIcon ??
              IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.arrow_back,
                    color: widget.colorTitle ?? AppColor.whiteColor,
                    // size: IconSizes.med,
                  ),
                  onPressed: widget.onBackPressed ?? () => Get.back())
          : null,
      title: Padding(
        padding: widget.useLeading
            ? EdgeInsets.zero
            : EdgeInsets.only(left: Insets.xl),
        child: widget.center ??
            Text(
              widget.title,
              style: TextStyles.textLgBold
                  .copyWith(color: widget.colorTitle ?? AppColor.whiteColor),
            ),
      ),
      actions: widget.actions ??
          <Widget>[
            Padding(
              padding: EdgeInsets.only(right: Insets.lg),
              child: GestureDetector(
                child: widget.icon ?? Container(),
              ),
            ),
          ],
      centerTitle: widget.centerTitle ?? false,
    );
  }
}
