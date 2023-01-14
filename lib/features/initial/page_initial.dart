import 'package:flowcy_customer/features/initial/controller_initial.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageInitial extends GetView<ControllerInitial> {
  const PageInitial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Initial page"),
          ],
        ),
      ),
    );
  }
}
