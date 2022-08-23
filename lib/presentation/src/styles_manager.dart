import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize, String fontFamily, FontWeight fontWeight, Color color) =>
    TextStyle(fontSize: fontSize, fontFamily: fontFamily, color: color, fontWeight: fontWeight);

/// regular style
TextStyle getRegularStyle({double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.regular, color);

/// light text style
TextStyle getLightStyle({double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.light, color);

/// bold text style
TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.bold, color);

/// black text style
TextStyle getBlackStyle({double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.black, color);

/// Extra Bold text style
TextStyle getExtraBoldStyle({double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.extraBold, color);

/// Extra Black text style
TextStyle getExtraLightStyle({double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.extraLight, color);

/// semi bold text style
TextStyle getSemiBoldStyle({double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.semiBold, color);

/// medium text style
TextStyle getMediumStyle({double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.medium, color);