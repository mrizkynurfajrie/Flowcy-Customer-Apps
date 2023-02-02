import 'package:flowcy_customer/features/template/controller_template.dart';
import 'package:flowcy_customer/features/template/pages/page_inputs.dart';
import 'package:flowcy_customer/features/template/pages/page_shadows.dart';
import 'package:flowcy_customer/features/template/pages/pages_typography.dart';
import 'package:flowcy_customer/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTemplate extends GetView<ControllerTemplate> {
  const PageTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      title: "Page Template",
      center: null,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(() => const PageShadows());
              },
              child: const Text("Blur & Shadows"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const PageTypography());
              },
              child: const Text("Typography"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const PageInputs());
              },
              child: const Text("Inputs"),
            ),
          ],
        ),
      ),
    );
  }
}
