import 'dart:developer';

import 'package:flowcy_customer/features/template/controller_template.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/inputs/input_date.dart';
import 'package:flowcy_customer/shared/widgets/inputs/input_primary.dart';
import 'package:flowcy_customer/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageInputs extends StatelessWidget {
  const PageInputs({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<ControllerTemplate>();
    return PageDecorationTop(
      title: "Page Input",
      center: null,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InputPrimary(
              label: 'Input primary',
              hintText: 'Example hint',
              info: 'Text info to help user.',
              onTap: () {},
            ),
            InputPrimary(
              label: 'Input primary with suffix icon',
              hintText: 'Example hint',
              info: 'Text info to help user.',
              suffixIcon: const Icon(Icons.lock),
              onTap: () {},
            ),
            InputPrimary(
              label: 'Input primary with prefix suffix icon',
              hintText: 'Example hint',
              info: 'Text info to help user.',
              suffixIcon: const Icon(Icons.lock),
              prefixIcon: const Icon(Icons.email),
              onTap: () {},
            ),
            InputPrimary(
              enable: false,
              label: 'Input primary disable',
              hintText: 'Example hint',
              info: 'Text info to help user.',
              suffixIcon: const Icon(Icons.lock),
              onTap: () {},
            ),
            Form(
              key: controller.formKey,
              child: InputPrimary(
                controller: controller.inputPrimaryController,
                label: 'Input primary error',
                hintText: 'Example hint',
                info: 'Text info to help user.',
                suffixIcon: const Icon(Icons.lock),
                validate: (value) {
                  if (value == '' || value == null) {
                    return "Text error empty";
                  }
                  return "";
                },
                onTap: () {},
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.formKey.currentState!.validate();
              },
              child: Text(
                "Trigger error",
                style: TextStyles.textXs,
              ),
            ),
            verticalSpace(10),
            InputDate(
              label: 'Input tanggal',
              controller: controller.dateController,
              selectedDate: (value) {
                log(value.toString());
              },
              isValid: (value) {
                log(value.toString());
              },
            ),
          ],
        ),
      ),
    );
  }
}
