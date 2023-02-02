import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ControllerTemplate extends GetxController {
  late TextEditingController dateController;
  late TextEditingController inputPrimaryController;

  final formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    dateController = TextEditingController();
    inputPrimaryController = TextEditingController();
    super.onInit();
  }
}
