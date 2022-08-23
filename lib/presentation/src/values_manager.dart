import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

class Values {
  static const double mobileMaxWidth = 300;
  static const double tabletMaxWidth = 600;
  static const double desktopMaxWidth = 1200;
  static const double zero = 0;

  // size from Width.
  static final double w1 = 1.w;
  static final double w2 = 2.w;
  static final double w3 = 3.w;
  static final double w4 = 4.w;
  static final double w5 = 5.w;
  static final double w6 = 6.w;
  static final double w7 = 7.w;
  static final double w8 = 8.w;
  static final double w9 = 9.w;
  static final double w10 = 10.w;
  static final double w11 = 11.w;
  static final double w12 = 12.w;

  // size from Height.
  static final double h1 = 1.h;
  static final double h2 = 2.h;
  static final double h3 = 3.h;
  static final double h4 = 4.h;
  static final double h5 = 5.h;
  static final double h6 = 6.h;
  static final double h7 = 7.h;
  static final double h8 = 8.h;
  static final double h9 = 9.h;
  static final double h10 = 10.h;
  static final double h11 = 11.h;
  static final double h12 = 12.h;

  static double get fromWidth1 => w1;

  static double get fromWidth2 => w2;

  static double get fromWidth3 => w3;

  static double get fromWidth4 => w4;

  static double get fromWidth5 => w5;

  static double get fromWidth6 => w6;

  static double get fromWidth7 => w7;

  static double get fromWidth8 => w8;

  static double get fromWidth9 => w9;

  static double get fromWidth10 => w10;

  static double get fromWidth11 => w11;

  static double get fromWidth12 => w12;

  // Margin from Height.
  static double get fromHeight1 => h1;

  static double get fromHeight2 => h2;

  static double get fromHeight3 => h3;

  static double get fromHeight4 => h4;

  static double get fromHeight5 => h5;

  static double get fromHeight6 => h6;

  static double get fromHeight7 => h7;

  static double get fromHeight8 => h8;

  static double get fromHeight9 => h9;

  static double get fromHeight10 => h10;

  static double get fromHeight11 => h11;

  static double get fromHeight12 => h12;
}

class Margin with Values {
  static EdgeInsets only({double left = 0.0, double top = 0.0, double right = 0.0, double bottom = 0.0}) =>
      EdgeInsets.only(right: right, left: left, top: top, bottom: bottom);

  static EdgeInsets symmetric({double vertical = 0.0, double horizontal = 0.0}) =>
      EdgeInsets.only(bottom: vertical, top: vertical, left: horizontal, right: horizontal);

  static EdgeInsets all(double n) => EdgeInsets.all(n);

  //
  static EdgeInsets get allFromHeight1 => all(Values.w1);

  static EdgeInsets get allFromHeight2 => all(Values.w2);

  static EdgeInsets get allFromHeight3 => all(Values.w3);

  static EdgeInsets get allFromHeight4 => all(Values.w4);

  static EdgeInsets get allFromHeight5 => all(Values.w5);

  static EdgeInsets get allFromHeight6 => all(Values.w6);

  //
  static EdgeInsets get allFromWidth1 => all(Values.h1);

  static EdgeInsets get allFromWidth2 => all(Values.h2);

  static EdgeInsets get allFromWidth3 => all(Values.h3);

  static EdgeInsets get allFromWidth4 => all(Values.h4);

  static EdgeInsets get allFromWidth5 => all(Values.h5);

  static EdgeInsets get allFromWidth6 => all(Values.h6);
}

class AppSize {
  static double width10 = 10.w;
  static double width20 = 20.w;
  static double width30 = 30.w;
  static double width40 = 40.w;
  static double width50 = 50.w;
  static double width60 = 60.w;
  static double width70 = 70.w;
  static double width80 = 80.w;
  static double width90 = 90.w;

  static const double s0 = 0;
  static const double s1_5 = 1.5;
  static const double s4 = 4.0;
  static const double s8 = 8.0;
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
  static const double s28 = 28.0;
  static const double s40 = 40.0;
  static const double s60 = 60.0;
  static const double s65 = 65.0;
  static const double s100 = 100.0;
  static const double s180 = 180.0;
}

class DurationConstant {
  static const int d300 = 300;
  static const int ds2 = 2;
}

const String EMPTY = "";
const num ZERO = 0;
