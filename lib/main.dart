import 'package:flowcy_customer/app.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void mainApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const App());
}
