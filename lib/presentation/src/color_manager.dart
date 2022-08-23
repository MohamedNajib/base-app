import 'package:flutter/material.dart';


class ColorManager {
  ColorManager._();



 //static const Color scaffoldLightColor = Color(0xfff6f6fd);
  static const Color scaffoldLightColor = Color(0xFFF9F9F9);//#F9F9F9
  static const Color scaffoldDarkColor = Color(0xff272727);


  static const Color primaryColor = Color(0xFF6200EE);
  static  Color primaryColorLight = const Color(0xFFdedcff).withOpacity(0.3);
  static const Color accentColor = Color(0xFFFFD740);
  static const Color backgroundColor = Color(0xFFF9F9F9);
  static const Color textTitleColor = Color(0xFF0C0B0C);
  static const Color textFieldColor = Color(0xFFEEEDEE);
  static const Color iconColor = Color(0xFFEDEDEF);
  static Color textFieldHintColor = const Color(0xFF000000).withOpacity(0.4);

  static const Color subcategoryItemColor = Color(0xFFEDEDEF);


  // Feedback Colors
  static const Color success = Color(0xFFD3EADE);//#D3EADE
  static const Color darkSuccess = Color(0xFF62A47C);//#D3EADE
  static const Color warning = Color(0xFFF8C7A3);//#F8C7A3
  static const Color darkWarning = Color(0xFFA16840);//#F8C7A3
  static const Color danger = Color(0xFFFFC1CD);//#FFC1CD
  static const Color darkDanger = Color(0xFF90354B);//#FFC1CD
  static const Color info = Color(0xFFC5E7E7);//#C5E7E7
  static const Color darkInfo = Color(0xFF308C88);//#C5E7E7

}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}

extension HexColorFromString on String {
  Color get toColor {
    return HexColor.fromHex(this);
  }
}
