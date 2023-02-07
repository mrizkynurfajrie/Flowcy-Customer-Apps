import 'package:flowcy_customer/framework/api2.dart';
import 'package:flowcy_customer/response/user_response.dart';
import 'package:get/get.dart';

class ControllerUser extends GetxController{
  var user = User().obs;

  @override
  void onInit() async {
    // TODO: implement onInit
    await setUserData();
    super.onInit();
  }

  setUserData() async {
    var data = await Api2().getUser();
    if (data != null) {
      // user.value = User.fromJson(data);
    }
  }
}