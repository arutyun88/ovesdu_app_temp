library font_awesome_flutter;

import 'package:flutter/widgets.dart';

class IconDataBrands extends IconData {
  const IconDataBrands(int codePoint)
      : super(codePoint, fontFamily: 'IconDataBrands');
}

class IconDataSolid extends IconData {
  const IconDataSolid(int codePoint)
      : super(codePoint, fontFamily: 'IconDataSolid');
}

class IconDataRegular extends IconData {
  const IconDataRegular(int codePoint)
      : super(codePoint, fontFamily: 'FontAwesomeRegular');
}

class IconDataLight extends IconData {
  const IconDataLight(int codePoint)
      : super(codePoint, fontFamily: 'MaterialIcons');
}

class AppIcons {
  static const IconData registered = const IconDataRegular(0xf25d);
  static const IconData reply = const IconDataLight(0xf3e5);
  static const IconData receipt = const IconDataLight(0xf543);
  static const IconData question = const IconDataLight(0xe959);
  static const IconData info = const IconDataLight(0xe7da);
  static const IconData favorite = const IconDataBrands(0xe722);
  static const IconData expand_more = const IconDataLight(0xe246);
}
