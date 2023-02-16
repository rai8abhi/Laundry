
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helper/constants/colors.dart';
import '../../../helper/responsive_ui.dart';
import '../../../widgets/column_spacer.dart';
import '../../../widgets/customTextFieldView.dart';
import '../../../widgets/submit_button_view.dart';
import '../controller/login_controller.dart';


class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/images/img.png')),
              ),
            ),
            _columnView(
              //LocaleKeys.login_username.tr,
              CustomTextFieldView(
                key: Key('username1'),
                controller: controller.userNameTEC,
                // focusNode: controller.usernameFN,
                labelText: "User ID",
                hintText: "Enter User Id",
                isPassword: false,
                radius: 5,
                textColor: AppColors.textColor,
                filled: true,
                fillColor: Colors.transparent,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  return controller.validateUsername(value);
                },
                iconSize: ResponsiveUI().height(3),
                padding: EdgeInsets.symmetric(
                  // vertical: ResponsiveUI().height(0.03),
                  horizontal: ResponsiveUI().height(0.03),
                ),
              ),
            ),
            const ColumnSpacer( value: 2),
            _columnView(
              CustomTextFieldView(
                key: const Key('password'),
                controller: controller.passwordTEC,
                // focusNode: controller.passwordFN,
                labelText: "Password",
                hintText: "Enter your password",
                isPassword: true,
                radius: 5,
                textColor: AppColors.textColor,
                filled: true,
                fillColor: Colors.transparent,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                validator: (value) {
                  return controller.validatePassword(value);
                },
                iconSize: ResponsiveUI().height(4.5),
                padding: EdgeInsets.symmetric(
                  // vertical: ResponsiveUI().height(0.03),
                  horizontal: ResponsiveUI().height(0.03),
                ),
                onFieldSubmitted: (value) {
                  controller.loginPressed();
                },
              ),
            ),
            TextButton(
              onPressed: (){
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            SubmitButtonView(
              key: const Key('login'),
              padding: EdgeInsets.only(
                left: ResponsiveUI().width(12),
                right: ResponsiveUI().width(12),
                top: ResponsiveUI().height(3),
              ),
              height: ResponsiveUI().height(5.3),
              buttonRadius: 5,
              title: "Login",
              onClickHandler: () {
                controller.loginPressed();
              },
            ),
            const ColumnSpacer( value: 2),
            const Text('New User? Create Account')
          ],
        ),
      ),
    );
  }



  _columnView(Widget child) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.only(
            left: ResponsiveUI().width(20),
            right: ResponsiveUI().width(20),
          ),
          child: child,
        ),
      ],
    );
  }

  //
  // @override
  // Widget build(BuildContext context) {
  //   Get.put(LoginController());
  //   return Scaffold(
  //     backgroundColor: Colors.white,
  //     resizeToAvoidBottomInset: true,
  //     body: SafeArea(
  //       child: SingleChildScrollView(
  //         child: _buildView(),
  //       ),
  //     ),
  //   );
  // }
  //
  // _buildView() {
  //   return LoginStackView(
  //     langButtonWidget: _langButton(),
  //     // child: Container(),
  //     child: Form(
  //       // key: controller.formKey,
  //       autovalidateMode: AutovalidateMode.onUserInteraction,
  //       child: Stack(
  //         fit: StackFit.loose,
  //         children: [
  //           _loginInputView(),
  //         ],
  //       ),
  //     ),
  //   );
  // }
  //
  // _langButton() {
  //   // final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
  //   //   foregroundColor: Colors.amber, backgroundColor: Colors.blue,
  //   //   // minimumSize: Size(Get.width * 0.07, Get.height * 0.05),
  //   //   padding: EdgeInsets.symmetric(
  //   //       horizontal: Get.width,
  //   //       vertical:  Get.height),
  //   //   shape: const RoundedRectangleBorder(
  //   //     borderRadius: BorderRadius.all(Radius.circular(5)),
  //   //   ),
  //   // );
  //   return Container();
  // }
  //
  // _loginInputView() {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     mainAxisSize: MainAxisSize.max,
  //     children: [
  //       // logo container
  //       Container(
  //         height: Get.height * 0.2,
  //         width: Get.width * 0.36,
  //         decoration: const BoxDecoration(
  //           // color: Colors.red,
  //           // image: DecorationImage(
  //           //     image: AssetImage(
  //           //       AppAssets.splash_logo,
  //           //     ),
  //           //     fit: BoxFit.contain),
  //         ),
  //       ),
  //
  //       _columnView(
  //         //LocaleKeys.login_username.tr,
  //         CustomTextFieldView(
  //           key: const Key('username1'),
  //           controller: controller.userNameTEC,
  //           // focusNode: controller.usernameFN,
  //           labelText: "LocaleKeys.login_username.tr",
  //           hintText: "LocaleKeys.login_username.tr",
  //           isPassword: false,
  //           radius: 5,
  //           textColor: AppColors.textColor,
  //           filled: true,
  //           fillColor: Colors.transparent,
  //           keyboardType: TextInputType.text,
  //           textInputAction: TextInputAction.next,
  //           validator: (value) {
  //             return controller.validateUsername(value);
  //           },
  //           iconSize: ResponsiveUI().height(3),
  //           padding: EdgeInsets.symmetric(
  //             // vertical: ResponsiveUI().height(0.03),
  //             horizontal: ResponsiveUI().height(0.03),
  //           ),
  //         ),
  //       ),
  //       const ColumnSpacer(value: 2),
  //       _columnView(
  //         CustomTextFieldView(
  //           key: const Key('password'),
  //           controller: controller.passwordTEC,
  //           // focusNode: controller.passwordFN,
  //           labelText: "LocaleKeys.login_password.tr",
  //           hintText: "LocaleKeys.login_password.tr",
  //           isPassword: true,
  //           radius: 5,
  //           textColor: AppColors.textColor,
  //           filled: true,
  //           fillColor: Colors.transparent,
  //           keyboardType: TextInputType.text,
  //           textInputAction: TextInputAction.done,
  //           validator: (value) {
  //             return controller.validatePassword(value);
  //           },
  //           iconSize: ResponsiveUI().height(4.5),
  //           padding: EdgeInsets.symmetric(
  //             // vertical: ResponsiveUI().height(0.03),
  //             horizontal: ResponsiveUI().height(0.03),
  //           ),
  //           onFieldSubmitted: (value) {
  //             controller.loginPressed();
  //           },
  //         ),
  //       ),
  //       SubmitButtonView(
  //         key: const Key('login'),
  //         padding: EdgeInsets.only(
  //           left: ResponsiveUI().width(12),
  //           right: ResponsiveUI().width(12),
  //           top: ResponsiveUI().height(3),
  //         ),
  //         height: ResponsiveUI().height(5.3),
  //         buttonRadius: 5,
  //         title: "LocaleKeys.login_login.tr",
  //         onClickHandler: () {
  //           controller.loginPressed();
  //         },
  //       ),
  //       // ColumnSpacer(value: 3),
  //       // Container(
  //       //   child: SubmitButtonView(
  //       //     key: Key('forgot'),
  //       //     textColor: AppColors.primaryColor,
  //       //     colorBorder: AppColors.primaryColor,
  //       //     color: AppColors.textColorOnBackgroud,
  //       //     height: ResponsiveUI().height(5),
  //       //     buttonRadius: 5,
  //       //     padding: EdgeInsets.only(
  //       //       left: ResponsiveUI().width(12),
  //       //       right: ResponsiveUI().width(12),
  //       //     ),
  //       //     title: "LocaleKeys.forgot_password_title.tr",
  //       //     onClickHandler: () {
  //       //       // controller.forgotPressed();
  //       //     },
  //       //   ),
  //       // ),
  //     ],
  //   );
  // }
  //
  // _columnView(Widget child) {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     mainAxisSize: MainAxisSize.min,
  //     children: [
  //       Container(
  //         padding: EdgeInsets.only(
  //           left: ResponsiveUI().width(12),
  //           right: ResponsiveUI().width(12),
  //         ),
  //         child: child,
  //       ),
  //     ],
  //   );
  // }

}
