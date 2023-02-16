import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helper/constants/colors.dart';
import '../helper/responsive_ui.dart';

class SubmitButtonView extends GetView {
  final String? title;
  final Function? onClickHandler;
  final EdgeInsets padding;
  final double width;
  final Color color;
  final Color colorBorder;
  final Color textColor;
  final double height;
  final Key? key;
  final double buttonRadius;

  SubmitButtonView({
    this.key,
    this.title,
    this.onClickHandler,
    this.width = double.infinity,
    this.padding = const EdgeInsets.fromLTRB(20, 25, 20, 15),
    this.height = ResponsiveUI.buttonHeight,
    this.colorBorder = AppColors.submitButtonColor,
    this.color = AppColors.submitButtonColor,
    this.textColor = Colors.white,
    this.buttonRadius = ResponsiveUI.buttonRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: this.padding,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: colorBorder),
          borderRadius: BorderRadius.all(Radius.circular(buttonRadius)),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(.4), // Colors.grey.withOpacity(0.5),
              spreadRadius: 1.5,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          //borderRadius: BorderRadius.all(Radius.circular(Sizes.buttonRadius)),
          child: TextButton(
            key: key,
            // textColor: Colors.white,
            // color: color,
            // style: TextButton.styleFrom(
            //   // minimumSize: Size(_width, _height),
            //   backgroundColor: color,
            //   padding: EdgeInsets.zero,
            //   elevation: 5,
            // ),
            onPressed: () {
              if (onClickHandler != null) onClickHandler!();
            },
            child: AutoSizeText(
              title!,
              // maxFontSize: ResponsiveUI().fontSize(2),
              maxLines: 1,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.3,
                  fontSize: ResponsiveUI().fontSize(6.5),
                  color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
