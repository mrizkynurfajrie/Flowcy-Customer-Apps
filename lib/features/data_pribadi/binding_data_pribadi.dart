import 'package:flowcy_customer/features/data_pribadi/api_data_pribadi.dart';
import 'package:flowcy_customer/features/data_pribadi/controller_data_pribadi.dart';
import 'package:get/get.dart';

class BindingDataPribadi implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ControllerDataPribadi(api: ApiDataPribadi()));
  }
}
