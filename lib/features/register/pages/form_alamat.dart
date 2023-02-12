import 'package:flowcy_customer/features/register/controller_register.dart';
import 'package:flowcy_customer/shared/constans/colors.dart';
import 'package:flowcy_customer/shared/constans/styles.dart';
import 'package:flowcy_customer/shared/widgets/inputs/input_primary.dart';
import 'package:flowcy_customer/shared/widgets/inputs/input_primary_big.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FormDataAlamat extends GetView<ControllerRegister> {
  const FormDataAlamat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(16.h),
              //Widget 1 - Input//
              InputPrimary(
                label: 'Alamat Lengkap',
                hintText: 'Tulis alamat',
                controller: controller.txtAddress,
                margin: EdgeInsets.only(top: 6.h),
                onTap: () {},
              ),
              verticalSpace(16.h),
              Text('#Reserve1 - DropDown Provinsi'),
              verticalSpace(16.h),
              Text('#Reserve2 - DropDown Kota/Kabupaten'),
              verticalSpace(16.h),
              Text('#Reserve3 - DropDown Kecamatan'),
              verticalSpace(16.h),
              //Pin Address As Widget//
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tandai Alamat sebagai:',
                    style: TextStyles.inter.copyWith(
                      fontSize: FontSizes.s14,
                      fontWeight: FontWeight.w600,
                      color: AppColor.neutral.shade700,
                    ),
                  ),
                  verticalSpace(6.h),
                  Container(
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                      color: AppColor.whiteColor,
                      border: Border.all(
                        color: AppColor.neutral.shade300,
                      ),
                    ),
                    child: TextFormField(
                      readOnly: true,
                      style: TextStyles.inter.copyWith(
                        fontSize: FontSizes.s16,
                        color: AppColor.neutral.shade500,
                      ),
                      controller: controller.txtAddressAs,
                      onTap: () => controller.pinAddressAs(context),
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.keyboard_arrow_down,
                          size: IconSizes.arrowDown,
                          color: AppColor.neutral.shade400,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 12.h,
                          horizontal: 12.w,
                        ),
                        hintText: 'Pilih salah satu',
                        hintStyle: TextStyles.inter.copyWith(
                          fontSize: FontSizes.s16,
                          color: AppColor.neutral.shade500,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value == '') {
                          return 'Pastikan form ini tidak kosong';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ],
              ),
              verticalSpace(16.h),
              InputPrimaryBig(
                label: 'Deskripsi ',
                subLabel: '(Opsional)',
                hintText: 'Ketik deskripsi',
                margin: EdgeInsets.only(top: 6.h),
                maxLines: 4,
                onTap: () {},
              ),
              verticalSpace(6.h),
              Text(
                'Masukkan patokan atau rincian alamat kamu.',
                style: TextStyles.inter.copyWith(
                  color: AppColor.neutral.shade600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
