import 'package:flutter/material.dart';
import 'package:social_network_test_flutter_firebase/allConstants/all_constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? const SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? const SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      case ButtonPadding.PaddingT30:
        return getPadding(
          left: 28,
          top: 30,
          right: 28,
          bottom: 30,
        );
      default:
        return getPadding(
          all: 12,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillWhiteA700:
        return AppColors.whiteA700;
      case ButtonVariant.FillTeal700:
        return AppColors.teal700;
      case ButtonVariant.FillTeal40014:
        return AppColors.teal40014;
      case ButtonVariant.FillTeal400:
        return AppColors.teal400;
      case ButtonVariant.FillBlack900cc:
        return AppColors.black900Cc;
      default:
        return AppColors.gray100;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder19:
        return BorderRadius.circular(
          getHorizontalSize(
            19.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.CarosBold16:
        return TextStyle(
          color: AppColors.gray600,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Caros',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.CarosMedium16:
        return TextStyle(
          color: AppColors.black90001,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Caros',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.CircularStdBook14:
        return TextStyle(
          color: AppColors.black90001,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Circular Std',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.29,
          ),
        );
      case ButtonFontStyle.CircularStdBook16:
        return TextStyle(
          color: AppColors.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Circular Std',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.31,
          ),
        );
      default:
        return TextStyle(
          color: AppColors.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Caros',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.25,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder16,
  CircleBorder19,
}

enum ButtonPadding {
  PaddingAll12,
  PaddingAll8,
  PaddingT30,
}

enum ButtonVariant {
  FillGray100,
  FillWhiteA700,
  FillTeal700,
  FillTeal40014,
  FillTeal400,
  FillBlack900cc,
}

enum ButtonFontStyle {
  CarosBold16,
  CarosMedium16,
  CarosBold16WhiteA700,
  CircularStdBook14,
  CircularStdBook16,
}
