import 'package:flutter/material.dart';
import 'package:spotify/src/theme/colors.dart';
import 'package:spotify/src/theme/dimens.dart';

mixin AppTextStyle {
  static const normalTextStyle =
      TextStyle(color: Colors.white, fontSize: Dimens.normalFont);
  static const largeTextStyle =
      TextStyle(color: Colors.white, fontSize: Dimens.largeFont);
  static const extraLargeTextStyle =
      TextStyle(color: Colors.white, fontSize: Dimens.extraLargeFont);
  static const primaryTextStyle =
      TextStyle(color: AppColor.primary, fontSize: Dimens.normalFont);
  static const primaryLargeTextStyle =
      TextStyle(color: AppColor.primary, fontSize: Dimens.largeFont);
  static const lightTextStyle =
      TextStyle(color: Colors.grey, fontSize: Dimens.normalFont);
  static const largeLightTextStyle =
      TextStyle(color: Colors.grey, fontSize: Dimens.largeFont);
}
