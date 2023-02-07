import 'dart:async';
import 'dart:io';
import 'package:flowcy_customer/features/register/pages/form_daftar.dart';
import 'package:flowcy_customer/features/register/pages/form_data_diri.dart';
import 'package:flowcy_customer/features/register/pages/form_password.dart';
import 'package:flowcy_customer/features/register/pages/form_verifikasi.dart';
import 'package:flowcy_customer/shared/controllers/controller_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class ControllerRegister extends GetxController {
  final formKey = GlobalKey<FormState>();

  //Parent Page Controller//
  var controllerUser = Get.find<ControllerUser>();
  var currentPage = 0.obs;
  late PageController pageController;
  final List<Widget> pages = [
    const FormDaftar(),
    const FormVerifikasi(),
    const FormPassword(),
    const FormDataDiri(),
  ];
  changePage(index) => currentPage.value = index;

  //Daftar Controller//
  var inputtedEmail = ''.obs;

  //Verifikasi Controller//
  late TextEditingController otpController;
  late StreamController<ErrorAnimationType> errorController;
  var currentText = ''.obs;
  var showResendOtpButton = false.obs;

  //Buat Kata Sandi Controller//
  var passwordController = TextEditingController();

  //Data Diri Controller//
  var imgPreview = ''.obs;
  final ImagePicker picker = ImagePicker();
  var txtPic = TextEditingController();
  var txtName = TextEditingController();
  var txtDate = TextEditingController();
  var txtGender = TextEditingController();
  var txtPhone = TextEditingController();
  var gender = ''.obs;
  var isPhoneValid = true.obs;
  

  genderSelect(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: SizedBox(
            child: Wrap(
              children: <Widget>[
                ListTile(
                    leading: const Icon(CupertinoIcons.person_fill,
                        color: Colors.blue),
                    title: const Text('Laki-Laki'),
                    onTap: () {
                      txtGender.text = 'Laki-Laki';
                      gender.value = 'male';
                      Navigator.of(context).pop();
                    }),
                ListTile(
                  leading: const Icon(CupertinoIcons.person_fill,
                      color: Colors.pink),
                  title: const Text('Perempuan'),
                  onTap: () {
                    txtGender.text = 'Perempuan';
                    gender.value = 'female';
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Future<File> compressImage(XFile image) async {
    final dir = await path_provider.getTemporaryDirectory();
    var targetPath =
        "${dir.absolute.path}/temp-${DateTime.now().millisecondsSinceEpoch}.png";
    var compressFile = await FlutterImageCompress.compressAndGetFile(
      image.path,
      targetPath,
      quality: 70,
      format: CompressFormat.png,
    );
    return compressFile!;
  }

  getFromCamera() async {
    final XFile? camImage =
        await picker.pickImage(source: ImageSource.camera, imageQuality: 50);
    if (camImage != null) {
      var result = await compressImage(camImage);
      imgPreview.value = result.path;
      txtPic.text = 'pic';
    }
  }

  getFromFile() async {
    final XFile? fileImage =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 50);
    if (fileImage != null) {
      var result = await compressImage(fileImage);
      imgPreview.value = result.path;
      txtPic.text = 'pic';
    }
  }

  imgSourceSelector(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
              child: SizedBox(
            child: Wrap(
              children: <Widget>[
                ListTile(
                    leading: const Icon(Icons.photo_camera),
                    title: const Text('Camera'),
                    onTap: () {
                      getFromCamera();
                      txtPic.text = 'pic';
                      Navigator.of(context).pop();
                    }),
                ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: const Text('Image Gallery'),
                  onTap: () {
                    getFromFile();
                    txtPic.text = 'pic';
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
          ));
        });
  }

  //Data Alamat Controller//

  @override
  void onInit() {
    //onInit parent controller//
    pageController = PageController(initialPage: currentPage.value);

    //onInit verifikasi controller//
    otpController = TextEditingController();
    errorController = StreamController<ErrorAnimationType>.broadcast();
    super.onInit();
  }

  @override
  void dispose() {
    //dispose daftar controller//

    //dispose verifikasi controller//
    otpController.dispose();

    // dispose kata sandi controller//
    passwordController.dispose();
    super.dispose();
  }
}
