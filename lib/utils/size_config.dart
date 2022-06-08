import 'package:flutter/widgets.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late bool isTabletDevice;
  static late double screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;
  static late double safeAreaHorizontal;
  static late double safeAreaVertical;
  static double? safeBlockHorizontal;
  static double? safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;

    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;

    safeBlockHorizontal = (screenWidth - safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - safeAreaVertical) / 100;

    isTabletDevice = ((_mediaQueryData.orientation == Orientation.portrait)
                ? screenWidth
                : screenHeight) >
            700
        ? true
        : false;
  }
}
