import 'package:flutter/material.dart';
import 'package:social_network_test_flutter_firebase/allConstants/all_constants.dart';

class AppDecoration {
  static BoxDecoration get txtFillRed400 => BoxDecoration(
        color: AppColors.red400,
      );

  static BoxDecoration get outlineAmber200 => BoxDecoration(
        border: Border.all(
          color: AppColors.amber200,
          width: getHorizontalSize(
            1,
          ),
        ),
      );

  static BoxDecoration get outlineGray10001 => BoxDecoration(
        color: AppColors.whiteA700,
        border: Border(
          top: BorderSide(
            color: AppColors.gray10001,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );

  static BoxDecoration get outlineGray100011 => BoxDecoration(
        color: AppColors.whiteA700,
        border: Border.all(
          color: AppColors.gray10001,
          width: getHorizontalSize(
            1,
          ),
        ),
      );

  static BoxDecoration get outlineBlack90001 => BoxDecoration(
        color: AppColors.whiteA700,
        border: Border.all(
          color: AppColors.black90001,
          width: getHorizontalSize(
            1,
          ),
        ),
      );

  static BoxDecoration get gradientGray90000Black90003 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(
            0.5,
            -0.06,
          ),
          end: const Alignment(
            0.5,
            1,
          ),
          colors: [
            AppColors.gray90000,
            AppColors.black90003,
          ],
        ),
      );

  static BoxDecoration get fillCyan200 => BoxDecoration(
        color: AppColors.cyan200,
      );

  static BoxDecoration get outlineWhiteA700 => const BoxDecoration();

  static BoxDecoration get txtFillGray5001 => BoxDecoration(
        color: AppColors.gray5001,
      );

  static BoxDecoration get gradientBlack90099Black9009901 => BoxDecoration(
        color: AppColors.whiteA700,
        gradient: LinearGradient(
          begin: const Alignment(
            0.5,
            -0.07,
          ),
          end: const Alignment(
            0.5,
            1.06,
          ),
          colors: [
            AppColors.black90099,
            AppColors.black9009901,
          ],
        ),
      );

  static BoxDecoration get fillBlack90001 => BoxDecoration(
        color: AppColors.black90001,
      );

  static BoxDecoration get txtFillGray50 => BoxDecoration(
        color: AppColors.gray50,
      );

  static BoxDecoration get fillBluegray10002 => BoxDecoration(
        color: AppColors.blueGray10002,
      );

  static BoxDecoration get fillTeal50 => BoxDecoration(
        color: AppColors.teal50,
      );

  static BoxDecoration get fillGray900 => BoxDecoration(
        color: AppColors.gray900,
      );

  static BoxDecoration get fillGray10002 => BoxDecoration(
        color: AppColors.gray10002,
      );

  static BoxDecoration get outlineGray90001 => BoxDecoration(
        color: AppColors.whiteA700,
        border: Border.all(
          color: AppColors.gray90001,
          width: getHorizontalSize(
            1,
          ),
        ),
      );

  static BoxDecoration get outline => const BoxDecoration();

  static BoxDecoration get outlineGray500 => BoxDecoration(
        color: AppColors.gray900,
        border: Border.all(
          color: AppColors.gray500,
          width: getHorizontalSize(
            1,
          ),
        ),
      );

  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: AppColors.whiteA700,
      );

  static BoxDecoration get outlinePink100 => BoxDecoration(
        border: Border.all(
          color: AppColors.pink100,
          width: getHorizontalSize(
            1,
          ),
        ),
      );

  static BoxDecoration get fillGray10007 => BoxDecoration(
        color: AppColors.gray10007,
      );

  static BoxDecoration get fillGray100 => BoxDecoration(
        color: AppColors.gray100,
      );

  static BoxDecoration get outlineIndigoA100 => BoxDecoration(
        border: Border.all(
          color: AppColors.indigoA100,
          width: getHorizontalSize(
            1,
          ),
        ),
      );

  static BoxDecoration get fillTeal5001 => BoxDecoration(
        color: AppColors.teal5001,
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL40 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        40,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        40,
      ),
    ),
  );

  static BorderRadius customBorderBL40 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        40,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        40,
      ),
    ),
  );

  static BorderRadius customBorderTL16 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        16,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        16,
      ),
    ),
  );

  static BorderRadius circleBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius circleBorder29 = BorderRadius.circular(
    getHorizontalSize(
      29,
    ),
  );

  static BorderRadius circleBorder11 = BorderRadius.circular(
    getHorizontalSize(
      11,
    ),
  );

  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius circleBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24,
    ),
  );

  static BorderRadius circleBorder35 = BorderRadius.circular(
    getHorizontalSize(
      35,
    ),
  );

  static BorderRadius circleBorder63 = BorderRadius.circular(
    getHorizontalSize(
      63,
    ),
  );

  static BorderRadius circleBorder41 = BorderRadius.circular(
    getHorizontalSize(
      41,
    ),
  );

  static BorderRadius circleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius circleBorder32 = BorderRadius.circular(
    getHorizontalSize(
      32,
    ),
  );

  static BorderRadius txtRoundedBorder6 = BorderRadius.circular(
    getHorizontalSize(
      6,
    ),
  );

  static BorderRadius txtCircleBorder11 = BorderRadius.circular(
    getHorizontalSize(
      11,
    ),
  );
}
