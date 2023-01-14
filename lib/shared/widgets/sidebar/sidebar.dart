import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  final Widget? headerChild;
  final Widget? itemsChild;
  const SideBar({
    Key? key,
    required this.headerChild,
    required this.itemsChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  buildHeader(BuildContext context) => headerChild;

  buildMenuItems(BuildContext context) => itemsChild;
}
