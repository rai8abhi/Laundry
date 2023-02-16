import 'package:a1_laundry/widgets/column_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../helper/constants/colors.dart';
import '../../../helper/responsive_ui.dart';
import '../../../widgets/custom_text.dart';
import '../controller/EncryptionController.dart';

class EncryptionView extends GetView<EncryptionController> {
  const EncryptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Encryption"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: SizedBox(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/images/img.png')),
              ),
            ),
            const ColumnSpacer(value: 2),
            Obx(() =>  CustomText(
              text: "${controller.userName?.value}",
              color: AppColors.black,
              fontSize: ResponsiveUI().fontSize(15),
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
              letterSpacing: 1.4,
              maxLines: 2,
            ),),
            const ColumnSpacer(value: 2),
            Obx(() =>  CustomText(
              text: "${controller.password?.value}",
              color: AppColors.black,
              fontSize: ResponsiveUI().fontSize(15),
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
              letterSpacing: 1.4,
              maxLines: 2,
            ),),
            const ColumnSpacer(value: 2),
            Obx(() => CustomText(
              text: "this is it:- ${controller.userEncryptedTest?.value}",
              color: AppColors.black,
              fontSize: ResponsiveUI().fontSize(5),
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
              letterSpacing: 1.4,
              maxLines: 3,
            ),),
            const ColumnSpacer(value: 2),
            Obx(() => CustomText(
              text: "${controller.userNameEncryptedBase64?.value}",
              color: AppColors.black,
              fontSize: ResponsiveUI().fontSize(5),
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
              letterSpacing: 1.4,
              maxLines: 3,
            ),),
            const ColumnSpacer(value: 2),
            Obx(() => CustomText(
              text: "${controller.passwordEncryptedBase16?.value}",
              color: AppColors.black,
              fontSize: ResponsiveUI().fontSize(5),
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
              letterSpacing: 1.4,
              maxLines: 3,
            ),),
            const ColumnSpacer(value: 2),
            Obx(() => CustomText(
              text: "${controller.decryptedText?.value}",
              color: AppColors.black,
              fontSize: ResponsiveUI().fontSize(5),
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
              letterSpacing: 1.4,
              maxLines: 2,
            ),),
          ],
        ),
      ),
    );
  }



}