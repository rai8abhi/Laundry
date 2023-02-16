import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../helper/constants/colors.dart';
import '../helper/responsive_ui.dart';

class CustomTextFieldView extends GetView {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool isPassword;
  final String? hintText;
  final Function(String)? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final bool? filled;
  final Key? key;
  final EdgeInsets? padding;
  final double radius;
  final EdgeInsets? contentPadding;
  final Color textColor;
  final String labelText;
  final bool prefix;
  final bool tfPrefix;
  final bool showClearIcon;
  final Function(String)? onIconPressed;
  final VoidCallback? onClearPressed;
  final bool readOnly; //user will not able to edit text
  final GestureTapCallback? onTap;
  final IconData icon;
  final double? iconSize;
  // final List<Function(String)>? validators;
  final bool? enable;
  final bool? show;
  final TextCapitalization? textCapitalization;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final int? maxLength;
  final Color iconColorPrefix;
  final Color iconColorSuffix;
  final Color clearIconColor;
  final IconData clearIcon;
  final double? clearIconSize;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final List<TextInputFormatter>? inputFormatters;

  CustomTextFieldView({
    // this.validators = const [],
    this.key,
    this.controller,
    this.focusNode,
    this.readOnly = false,
    this.icon = Icons.search,
    // iconSize: ResponsiveUI().height(4.5),
    this.iconSize,
    this.onTap,
    this.onIconPressed,
    this.labelText = '',
    this.textColor = AppColors.submitButtonColor,
    this.radius = 24.0,
    this.padding = EdgeInsets.zero,
    this.contentPadding,
    this.isPassword = false,
    this.hintText,
    this.keyboardType,
    this.validator,
    this.textInputAction,
    this.fillColor,
    this.filled,
    this.prefix = false,
    this.tfPrefix = false,
    this.showClearIcon = false,
    this.enable = true,
    this.show = true,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.textCapitalization = TextCapitalization.sentences,
    this.onChanged,
    this.onFieldSubmitted,
    this.maxLength = 255,
    this.iconColorPrefix = AppColors.primaryColor,
    this.iconColorSuffix = AppColors.primaryColor,
    this.clearIconColor = AppColors.grey,
    this.clearIcon = Icons.search,
    this.clearIconSize,
    this.onClearPressed,
    this.inputFormatters = const [],
    // this.textCapitalization = TextCapitalization.none,
  });

  @override
  Widget build(BuildContext context) {
    return !show!
        ? Container()
        : Container(
      padding: padding!,
      child: Row(
        mainAxisAlignment: mainAxisAlignment!,
        crossAxisAlignment: prefix != null && prefix
            ? CrossAxisAlignment.center
            : crossAxisAlignment!,
        children: [
          Flexible(
            child: _textField(),
          ),
          prefix
              ? SizedBox(
            width: 5,
          )
              : Container(),
          prefix
              ? InkWell(
            onTap: enable != null && enable!
                ? () {
              if (onIconPressed != null) {
                onIconPressed!(controller!.text.trim());
              }
            }
                : null,
            child: Icon(
              icon,
              color: iconColorSuffix,
              size: iconSize,
            ),
          )
              : Container(),
        ],
      ),
    );
  }

  _textField() {
    return TextFormField(
      key: key,
      autofocus: false,
      focusNode: focusNode, //FocusNode(canRequestFocus: false),
      readOnly: readOnly,
      enabled: enable,
      onTap: onTap,
      controller: controller,
      onChanged: (value) {
        if (onChanged != null) {
          onChanged!(value);
        }
      },
      onFieldSubmitted: (value) {
        if (onFieldSubmitted != null) {
          onFieldSubmitted!(value);
        }
      },
      obscureText: isPassword,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      textCapitalization: textCapitalization!,
      inputFormatters: inputFormatters,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      // validator: validators!,
      // validator: FormBuilderValidators.compose([
      //   FormBuilderValidators.maxLength(Get.context!, 250),
      //   ...validators!
      // ]),
      validator: (value) => validator!(value!) ?? null,
      style: TextStyle(
        color: textColor,
        fontSize: ResponsiveUI().fontSize(5.3),
        letterSpacing: 0.5,
      ),
      maxLength: maxLength,
      decoration: new InputDecoration(
          hintText: hintText ?? labelText,
          labelText: labelText,
          labelStyle: TextStyle(
            color: AppColors.textColor,
            fontSize: ResponsiveUI().fontSize(6),
            letterSpacing: 0.5,
          ),
          counterStyle: TextStyle(
            height: double.minPositive,
          ),
          counterText: "",
          hintStyle: TextStyle(
            color: AppColors.grey,
            fontSize: ResponsiveUI().fontSize(5),
            letterSpacing: 0.4,
          ),
          errorStyle: TextStyle(
            color: AppColors.errorBackground,
            fontSize: ResponsiveUI().fontSize(4),
            letterSpacing: 1.2,
          ),
          // contentPadding: contentPadding,
          // contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          contentPadding: contentPadding != null
              ? contentPadding
              : EdgeInsets.only(
              right: ResponsiveUI().width(2),
              left: ResponsiveUI().width(2),
              top: ResponsiveUI().height(1.5),
              bottom: ResponsiveUI().height(0.1)),
          border: new OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(radius),
            ),
            borderSide: BorderSide(width: 3, color: AppColors.loginBorderColor),
          ),
          filled: filled,
          fillColor: fillColor,
          prefixIcon: tfPrefix
              ? Icon(
            // CupertinoIcons.check_mark,
            icon,
            color: iconColorPrefix,
          )
              : null,
          suffixIcon: showClearIcon
              ? IconButton(
            onPressed: onClearPressed,
            icon: Icon(
              // CupertinoIcons.check_mark,
              clearIcon,
              color: clearIconColor,
              size: clearIconSize,
            ),
          )
              : null),
    );
  }

/*_textFieldRequired() {
    return TextFormField(
      key: key,
      autofocus: false,
      readOnly: readOnly,
      onTap: onTap,
      controller: controller,
      obscureText: isPassword,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      // validator: validators!,
      // validator: FormBuilderValidators.compose([
      //   FormBuilderValidators.maxLength(Get.context!, 250),
      //   ...validators!
      // ]),
      validator: (value) => validator!(value!) ?? null,
      style: TextStyle(
        color: textColor,
        fontSize: ResponsiveUI().fontSize(6),
        letterSpacing: 0.5,
      ),
      decoration: new InputDecoration(
        hintText: hintText ?? "",
        labelText: labelText,
        labelStyle: TextStyle(
          color: AppColors.textColor,
          fontSize: ResponsiveUI().fontSize(6),
          letterSpacing: 0.5,
        ),
        hintStyle: TextStyle(
          color: AppColors.grey,
          fontSize: ResponsiveUI().fontSize(5),
          letterSpacing: 0.4,
        ),
        contentPadding: contentPadding ?? EdgeInsets.only(right: 8, left: 8),
        border: new OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
          borderSide: BorderSide(width: 3, color: AppColors.loginBorderColor),
        ),
        filled: filled,
        fillColor: fillColor,
        suffixIcon: tfSuffix
            ? Icon(
                CupertinoIcons.cart_fill_badge_plus,
                color: AppColors.primaryColor,
              )
            : null,
      ),
    );
  }*/

/* _textFieldWithIgnorePainter() {
    return IgnorePointer(
      child: TextFormField(
        key: key,
        autofocus: false,
        readOnly: readOnly,
        onTap: onTap,
        controller: controller,
        obscureText: isPassword,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        // validator: validators!,
        // validator: FormBuilderValidators.compose([
        //   FormBuilderValidators.maxLength(Get.context!, 250),
        //   ...validators!
        // ]),
        validator: (value) => validator!(value!) ?? null,
        style: TextStyle(
          color: textColor,
          fontSize: ResponsiveUI().fontSize(6),
          letterSpacing: 0.5,
        ),
        decoration: new InputDecoration(
          hintText: hintText ?? "",
          labelText: labelText,
          labelStyle: TextStyle(
            color: AppColors.textColor,
            fontSize: ResponsiveUI().fontSize(6),
            letterSpacing: 0.5,
          ),
          hintStyle: TextStyle(
            color: AppColors.grey,
            fontSize: ResponsiveUI().fontSize(5),
            letterSpacing: 0.4,
          ),
          contentPadding: contentPadding,
          border: new OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(radius),
            ),
            borderSide: BorderSide(width: 3, color: AppColors.loginBorderColor),
          ),
          filled: filled,
          fillColor: fillColor,
          suffixIcon: tfSuffix
              ? Icon(
                  CupertinoIcons.cart_fill_badge_plus,
                  color: AppColors.primaryColor,
                )
              : null,
        ),
      ),
    );
  }*/
}
