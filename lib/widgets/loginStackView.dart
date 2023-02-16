import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginStackView extends GetView {
  final Widget child;
  final Widget? langButtonWidget;

  const LoginStackView({
    Key? key,
    required this.child,
    this.langButtonWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _stackView();
  }

  _stackView() {
    return Stack(
      fit: StackFit.loose,
      children: [
        Container(
          height: Get.height, //Get.height * 0.370, // Get.height * 1.05,
          decoration: const BoxDecoration(
            color: Colors.white,
            // image: DecorationImage(
            //     image: AssetImage(AppAssets.login_top), fit: BoxFit.fill),
          ),
        ),
        langButtonWidget == null
            ? Container()
            : Positioned(
          top: Get.height,
          right: Get.height,
          child: langButtonWidget!,
        ),
        // Positioned(top: 10, left: 10, child: LogoContainer()),
        Container(
          height: Get.height, // Get.height * 0.63,
          padding: EdgeInsets.only(top: Get.height),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                  Get.height), // Get.height * 0.04),
              topRight: Radius.circular(Get.height),
            ),
            color: Colors.white,
            // image: DecorationImage(
            //     image: AssetImage(AppAssets.login_bottom), fit: BoxFit.fill),
          ),
          margin: EdgeInsets.only(top: Get.height),
          child: child,
        ),
      ],
    );
  }
}
