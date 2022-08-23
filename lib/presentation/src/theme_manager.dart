import 'package:election_app/app/app_cubit.dart';
import 'package:flutter/material.dart';

import '../../cour/app_prefs.dart';
import 'src.dart';

ThemeData darkTheme(context) => ThemeData(
  fontFamily: FontConstants.fontFamily,

  scaffoldBackgroundColor: ColorManager.scaffoldDarkColor,
  ///unselectedWidgetColor: Colors.grey,


  checkboxTheme: CheckboxThemeData(
    checkColor: MaterialStateProperty.all(Colors.white),
    fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) return ColorManager.primaryColor;
      if (states.contains(MaterialState.hovered)) return Colors.black38;
      return Colors.grey;
    }),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.all(Color(0xFFD8A21B)),
    trackColor: MaterialStateProperty.all(Color(0x66D8A21B)),
  ),

  radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(AppCubit.get(context).colorAccent/*accentColor*/),
  ),

  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
      elevation: MaterialStateProperty.all(8),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
      backgroundColor: MaterialStateProperty.all(Colors.transparent),
      // shadowColor: MaterialStateProperty.all(
      //     Theme.of(context).colorScheme.onSurface),
    ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
      elevation: MaterialStateProperty.all(8),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      backgroundColor: MaterialStateProperty.all(ColorManager.primaryColor),
      shadowColor: MaterialStateProperty.all(
          ColorManager.primaryColor),
    ),
  ),

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
      elevation: MaterialStateProperty.all(8),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
      backgroundColor: MaterialStateProperty.all(Colors.transparent),
      // shadowColor: MaterialStateProperty.all(
      //     Theme.of(context).colorScheme.onSurface),
    ),
  ),

    //Theme.of(context).inputDecorationTheme.labelStyle
  inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorManager.scaffoldDarkColor,
      contentPadding: const EdgeInsets.all(8),
      labelStyle: getMediumStyle(color: ColorManager.textFieldHintColor),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
          borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
          borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      iconColor: Colors.grey.withOpacity(0.3),
      hintStyle: TextStyle(
        color: Colors.black.withOpacity(0.5),
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
      ),
    ),

  // Text theme
  textTheme: TextTheme(
    headline1: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontSize.headline1Size,
        fontWeight: Weight.headline1Weight,
        letterSpacing: Spacing.headline1Weight),
    headline2: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontSize.headline2Size,
        fontWeight: Weight.headline2Weight,
        letterSpacing: Spacing.headline2Weight),
    headline3: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontSize.headline3Size,
        fontWeight: Weight.headline3Weight,
        letterSpacing: Spacing.headline3Weight),
    headline4: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontSize.headline4Size,
        fontWeight: Weight.headline4Weight,
        letterSpacing: Spacing.headline4Weight),
    headline5: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontSize.headline5Size,
        fontWeight: Weight.headline5Weight,
        letterSpacing: Spacing.headline5Weight),
    headline6: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontSize.headline6Size,
        fontWeight: Weight.headline6Weight,
        letterSpacing: Spacing.headline6Weight),
    button: const TextStyle(
        color: ColorManager.scaffoldDarkColor,
        fontSize: FontSize.buttonSize,
        fontWeight: FontWeight.w800),
  ),
);

ThemeData lightTheme(context) => ThemeData(
  fontFamily: FontConstants.fontFamily,
  scaffoldBackgroundColor: ColorManager.scaffoldLightColor,
  ///unselectedWidgetColor: Colors.grey,

  checkboxTheme: CheckboxThemeData(
    checkColor: MaterialStateProperty.all(Colors.white),
    fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) return ColorManager.primaryColor;
      if (states.contains(MaterialState.hovered)) return Colors.black38;
      return Colors.grey;
    }),
  ),
  radioTheme: RadioThemeData(
      //fillColor: MaterialStateProperty.all(accentColor)
      fillColor: MaterialStateProperty.all(AppCubit.get(context).colorAccent/*accentColor*/),
  ),

  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
      elevation: MaterialStateProperty.all(8),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
      backgroundColor: MaterialStateProperty.all(Colors.transparent),
      // shadowColor: MaterialStateProperty.all(
      //     Theme.of(context).colorScheme.onSurface),
    ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
      elevation: MaterialStateProperty.all(10),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      backgroundColor: MaterialStateProperty.all(ColorManager.primaryColor),
      shadowColor: MaterialStateProperty.all(
          ColorManager.primaryColor),
    ),
  ),

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
      elevation: MaterialStateProperty.all(8),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
      backgroundColor: MaterialStateProperty.all(Colors.transparent),
      // shadowColor: MaterialStateProperty.all(
      //     Theme.of(context).colorScheme.onSurface),
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: ColorManager.scaffoldLightColor,
    contentPadding: const EdgeInsets.all(8),
    labelStyle: getMediumStyle(color: ColorManager.textFieldHintColor),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
        borderRadius: const BorderRadius.all(Radius.circular(10))
    ),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
        borderRadius: const BorderRadius.all(Radius.circular(10))
    ),
    iconColor: Colors.grey.withOpacity(0.3),
    hintStyle: TextStyle(
      color: Colors.black.withOpacity(0.5),
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
    ),
  ),

  // Text theme
  textTheme: TextTheme(
    headline1: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontSize.headline1Size,
        fontWeight: Weight.headline1Weight,
        letterSpacing: Spacing.headline1Weight),
    headline2: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontSize.headline2Size,
        fontWeight: Weight.headline2Weight,
        letterSpacing: Spacing.headline2Weight),
    headline3: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontSize.headline3Size,
        fontWeight: Weight.headline3Weight,
        letterSpacing: Spacing.headline3Weight),
    headline4: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontSize.headline4Size,
        fontWeight: Weight.headline4Weight,
        letterSpacing: Spacing.headline4Weight),
    headline5: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontSize.headline5Size,
        fontWeight: Weight.headline5Weight,
        letterSpacing: Spacing.headline5Weight),
    headline6: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontSize.headline6Size,
        fontWeight: Weight.headline6Weight,
        letterSpacing: Spacing.headline6Weight),
    button: const TextStyle(
        color: ColorManager.scaffoldLightColor,
        fontSize: FontSize.buttonSize,
        fontWeight: FontWeight.w800),
  ),

  // subtitle1: getMediumStyle(color: ColorManager.lightGrey, fontSize: FontSize.s14),
  // subtitle2: getMediumStyle(color: ColorManager.primary, fontSize: FontSize.s14),
  // caption: getRegularStyle(color: ColorManager.grey1),
  // bodyText1: getRegularStyle(color: ColorManager.grey)),
);


List<Color> _systemDarkAccentColor = [
  '#60CDFF'.toColor,
  '#FFE885'.toColor,
  '#8E7BFF'.toColor,
  '#71FFF1'.toColor,
  '#FF7357'.toColor,
  Colors.deepPurpleAccent,
  Colors.tealAccent,
  Colors.blueAccent,
  Colors.cyanAccent,
  Colors.limeAccent,
  Colors.orangeAccent,
];

List<Color> _systemLightAccentColor = [
  '#1069BC'.toColor,
  '#FFD93B'.toColor,
  '#633EFF'.toColor,
  '#76E5FF'.toColor,
  '#FF2957'.toColor,
  Colors.deepPurpleAccent,
  Colors.tealAccent,
  Colors.blueAccent,
  Colors.cyanAccent,
  Colors.limeAccent,
  Colors.orangeAccent,
];
const List<String> _accentColorNames = [
  'Blue',
  'Orange',
  'Red',
  'Magenta',
  'Purple',
  'Deep Purple',
  'Teal',
  'Blue Accent',
  'Cyan',
  'Lime',
  'Orange',
];

List<Color> get getSystemDarkAccentColor => [..._systemDarkAccentColor];
List<Color> get getSystemLightAccentColor => [..._systemLightAccentColor];
List<String> get getAccentColorNames => [..._accentColorNames];


const int systemThemeMode = 1;
const int lightThemeMode = 2;
const int darkThemeMode = 3;

Color basedOnLuminance({
  Color darkColor = Colors.black,
  Color lightColor = Colors.white,
}) {
  return darkColor = Colors.black;
}




// ThemeData darkTheme = ThemeData(
//   primarySwatch: defaultColor,
//   scaffoldBackgroundColor: HexColor('333739'),
//   appBarTheme: AppBarTheme(
//     titleSpacing: 20.0,
//     systemOverlayStyle: SystemUiOverlayStyle(
//       statusBarColor: HexColor('333739'),
//       statusBarIconBrightness: Brightness.light,
//     ),
//     backgroundColor: HexColor('333739'),
//     elevation: 0.0,
//     titleTextStyle: TextStyle(
//       fontFamily: 'Jannah',
//       color: Colors.white,
//       fontSize: 20.0,
//       fontWeight: FontWeight.bold,
//     ),
//     iconTheme: IconThemeData(
//       color: Colors.white,
//     ),
//   ),
//   bottomNavigationBarTheme: BottomNavigationBarThemeData(
//     type: BottomNavigationBarType.fixed,
//     selectedItemColor: defaultColor,
//     unselectedItemColor: Colors.grey,
//     elevation: 20.0,
//     backgroundColor: HexColor('333739'),
//   ),
//   textTheme: TextTheme(
//     bodyText1: TextStyle(
//       fontSize: 18.0,
//       fontWeight: FontWeight.w600,
//       color: Colors.white,
//     ),
//     subtitle1: TextStyle(
//       fontSize: 14.0,
//       fontWeight: FontWeight.w600,
//       color: Colors.white,
//       height: 1.3,
//     ),
//   ),
//   fontFamily: 'Jannah',
// );
//
// ThemeData lightTheme = ThemeData(
//   primarySwatch: defaultColor,
//   scaffoldBackgroundColor: Colors.white,
//   appBarTheme: AppBarTheme(
//     titleSpacing: 20.0,
//     systemOverlayStyle: SystemUiOverlayStyle(
//       statusBarColor: Colors.white,
//       statusBarIconBrightness: Brightness.dark,
//     ),
//     backgroundColor: Colors.white,
//     elevation: 0.0,
//     titleTextStyle: TextStyle(
//       fontFamily: 'Jannah',
//       color: Colors.black,
//       fontSize: 20.0,
//       fontWeight: FontWeight.bold,
//     ),
//     iconTheme: IconThemeData(
//       color: Colors.black,
//     ),
//   ),
//   bottomNavigationBarTheme: BottomNavigationBarThemeData(
//     type: BottomNavigationBarType.fixed,
//     selectedItemColor: defaultColor,
//     unselectedItemColor: Colors.grey,
//     elevation: 20.0,
//     backgroundColor: Colors.white,
//   ),
//   textTheme: TextTheme(
//     bodyText1: TextStyle(
//       fontSize: 18.0,
//       fontWeight: FontWeight.w600,
//       color: Colors.black,
//     ),
//     subtitle1: TextStyle(
//       fontSize: 14.0,
//       fontWeight: FontWeight.w600,
//       color: Colors.black,
//       height: 1.3,
//     ),
//   ),
//   fontFamily: 'Jannah',
// );

ThemeData getApplicationTheme() {
  return ThemeData();
  // main colors of the app
  //   primaryColor: ColorManager.primary,
  //   primaryColorLight: ColorManager.primaryOpacity70,
  //   primaryColorDark: ColorManager.darkPrimary,
  //   disabledColor: ColorManager.grey1,
  //   // ripple color
  //   splashColor: ColorManager.primaryOpacity70,
  //   // will be used incase of disabled button for example
  //   accentColor: ColorManager.grey,
  //   // card view theme
  //   cardTheme: CardTheme(
  //       color: ColorManager.white,
  //       shadowColor: ColorManager.grey,
  //       elevation: AppSize.s4),
  //   // App bar theme
  //   appBarTheme: AppBarTheme(
  //       centerTitle: true,
  //       color: ColorManager.primary,
  //       elevation: AppSize.s4,
  //       shadowColor: ColorManager.primaryOpacity70,
  //       titleTextStyle: getRegularStyle(
  //           color: ColorManager.white, fontSize: FontSize.s16)),
  //   // Button theme
  //   buttonTheme: ButtonThemeData(
  //       shape: StadiumBorder(),
  //       disabledColor: ColorManager.grey1,
  //       buttonColor: ColorManager.primary,
  //       splashColor: ColorManager.primaryOpacity70),
  //
  //   // elevated button theme
  //   elevatedButtonTheme: ElevatedButtonThemeData(
  //       style: ElevatedButton.styleFrom(
  //           textStyle: getRegularStyle(color: ColorManager.white),
  //           primary: ColorManager.primary,
  //           shape: RoundedRectangleBorder(
  //               borderRadius: BorderRadius.circular(AppSize.s12)))),
  //
  //   // Text theme
  //   textTheme: TextTheme(
  //       headline1: getSemiBoldStyle(
  //           color: ColorManager.darkGrey, fontSize: FontSize.s16),
  //       subtitle1: getMediumStyle(
  //           color: ColorManager.lightGrey, fontSize: FontSize.s14),
  //       subtitle2: getMediumStyle(
  //           color: ColorManager.primary, fontSize: FontSize.s14),
  //       caption: getRegularStyle(color: ColorManager.grey1),
  //       bodyText1: getRegularStyle(color: ColorManager.grey)),
  //   // input decoration theme (text form field)
  //
  //   inputDecorationTheme: InputDecorationTheme(
  //     contentPadding: EdgeInsets.all(AppPadding.p8),
  //     // hint style
  //     hintStyle: getRegularStyle(color: ColorManager.grey1),
  //
  //     // label style
  //     labelStyle: getMediumStyle(color: ColorManager.darkGrey),
  //     // error style
  //     errorStyle: getRegularStyle(color: ColorManager.error),
  //
  //     // enabled border
  //     enabledBorder: OutlineInputBorder(
  //         borderSide:
  //         BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
  //         borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
  //
  //     // focused border
  //     focusedBorder: OutlineInputBorder(
  //         borderSide:
  //         BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
  //         borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
  //
  //     // error border
  //     errorBorder: OutlineInputBorder(
  //         borderSide:
  //         BorderSide(color: ColorManager.error, width: AppSize.s1_5),
  //         borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
  //     // focused error border
  //     focusedErrorBorder: OutlineInputBorder(
  //         borderSide:
  //         BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
  //         borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
  //   ));
}
