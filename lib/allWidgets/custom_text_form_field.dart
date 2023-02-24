import 'package:flutter/material.dart';
import 'package:social_network_test_flutter_firebase/allConstants/all_constants.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.Caros16:
        return TextStyle(
          color: AppColors.black90001,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Caros',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.25,
          ),
        );
      case TextFormFieldFontStyle.CircularStdBook18:
        return TextStyle(
          color: AppColors.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Circular Std',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.28,
          ),
        );
      default:
        return TextStyle(
          color: AppColors.gray600,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Circular Std',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.33,
          ),
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.CircleBorder30:
        return BorderRadius.circular(
          getHorizontalSize(
            30.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.UnderLineBluegray10001:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.blueGray10001,
          ),
        );
      case TextFormFieldVariant.UnderLineBluegray100:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.blueGray100,
          ),
        );
      case TextFormFieldVariant.UnderLineDeeporangeA400:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.deepOrangeA400,
          ),
        );
      case TextFormFieldVariant.FillWhiteA70033:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.FillWhiteA70033:
        return AppColors.whiteA70033;
      default:
        return AppColors.gray100;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.UnderLineBluegray10001:
        return false;
      case TextFormFieldVariant.UnderLineBluegray100:
        return false;
      case TextFormFieldVariant.UnderLineDeeporangeA400:
        return false;
      case TextFormFieldVariant.FillWhiteA70033:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT17:
        return getPadding(
          top: 17,
          right: 17,
          bottom: 17,
        );
      default:
        return getPadding(
          left: 11,
          top: 11,
          bottom: 11,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder12,
  CircleBorder30,
}

enum TextFormFieldPadding {
  PaddingT11,
  PaddingT17,
}

enum TextFormFieldVariant {
  None,
  FillGray100,
  UnderLineBluegray10001,
  UnderLineBluegray100,
  UnderLineDeeporangeA400,
  FillWhiteA70033,
}

enum TextFormFieldFontStyle {
  CircularStdBook12,
  Caros16,
  CircularStdBook18,
}
