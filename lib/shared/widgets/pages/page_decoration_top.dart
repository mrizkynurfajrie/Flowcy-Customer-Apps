import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/appbar/appbar.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class PageDecorationTop extends StatelessWidget {
  final Widget child;
  final String title;
  final Widget? bottomBar;
  final double? bottomBarHeight;
  final bool enableBack;
  final Color? toolbarColor;
  final double toolbarElevation;
  final Color? toolbarTitleColor;
  final List<Widget>? toolbarAction;
  final EdgeInsets? padding;
  final Widget? iconBack;
  final Color? backgroundColor;
  final Function()? onBackPressed;
  final Widget? center;
  final bool? centerTitle;
  final bool? resizeAvoidBottom;
  final Widget? drawer;
  final bool? autocally;
  final double? titleSpacing;
  final Widget? bottomSheet;

  const PageDecorationTop({
    Key? key,
    required this.child,
    required this.title,
    this.bottomBar,
    this.bottomBarHeight,
    this.enableBack = true,
    this.toolbarColor,
    this.toolbarTitleColor,
    this.toolbarElevation = 0,
    this.toolbarAction,
    this.padding,
    this.iconBack,
    this.backgroundColor,
    this.onBackPressed,
    this.center,
    this.centerTitle,
    this.resizeAvoidBottom,
    this.drawer,
    this.autocally,
    this.titleSpacing,
    this.bottomSheet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      resizeToAvoidBottomInset: resizeAvoidBottom ?? true,
      drawer: drawer,
      backgroundColor: backgroundColor ?? AppColor.whiteColor,
      appBar: CustomAppBar(
        autocally: autocally ?? false,
        titleSpacing: titleSpacing ?? 0,
        title: title,
        color: toolbarColor ?? Theme.of(context).primaryColor,
        elevation: toolbarElevation,
        colorTitle: toolbarTitleColor,
        actions: toolbarAction,
        leadingIcon: enableBack ? iconBack : horizontalSpace(0),
        useLeading: enableBack,
        onBackPressed: onBackPressed ?? () => Get.back(),
        center: center,
        centerTitle: centerTitle ?? false,
      ),
      body: SafeArea(
          child: Padding(
        padding: padding ?? EdgeInsets.all(Insets.xl),
        child: child,
      )),
      bottomNavigationBar: bottomBar != null
          ? SizedBox(
              width: Get.width,
              height: bottomBarHeight ?? Sizes.xxl,
              child: bottomBar,
            )
          : verticalSpace(0),
          bottomSheet: bottomSheet,
    );
  }
}
