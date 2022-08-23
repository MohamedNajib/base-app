import 'package:election_app/cour/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cour/app_prefs.dart';
import '../../../cour/constant.dart';
import '../../src/src.dart';
import '../block/landing_cubit.dart';

class MainLargeScreenMenu extends StatelessWidget {
  MainLargeScreenMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LandingCubit, LandingState>(
      listener: (context, state) {},
      builder: (context, state) {
        LandingCubit landingCubit = LandingCubit.get(context);
         return Container();
        // return Container(
        //   height: double.maxFinite,
        //   width: 140,
        //   color: ColorManager.menuBackgroundColor,
        //   child: Column(
        //     mainAxisSize: MainAxisSize.min,
        //     children: landingCubit.parentNavItemsList.map((item) {
        //       return MainMainItem(
        //         active: item.isChocked,
        //         text: item.title,
        //         icon: item.icon,
        //         onTap: () => landingCubit.onParentNavItemClicked(item),
        //         index: landingCubit.parentNavItemsList.indexOf(item),
        //       );
        //     }).toList(),
        //   ).withVerticalScroll, //.center,
        // ).center;
      },
    );
  }
}

// class MainMainItem extends StatefulWidget {
//   final bool? active;
//   final Function? onTap;
//   final IconData? icon;
//   final String? text;
//   final int? index;
//
//   const MainMainItem({Key? key, this.onTap, this.active, this.icon, this.text, this.index}) : super(key: key);
//
//   @override
//   State<MainMainItem> createState() => _MainNavItemState();
// }
//
// class _MainNavItemState extends State<MainMainItem> with TickerProviderStateMixin {
//   late AnimationController _textColorController;
//   late Animation<Color?> _textColorAnimation;
//   late AnimationController _iconColorController;
//   late Animation<Color?> _iconColorAnimation;
//   late AnimationController _letterSpacingController;
//   late Animation<double> _letterSpacingAnimation;
//   double opacity = 0.0;
//
//   @override
//   void initState() {
//     super.initState();
//     _textColorController = AnimationController(duration: Constant.duration375, reverseDuration: Constant.duration300, vsync: this);
//     _textColorAnimation = ColorTween(begin: ColorManager.mainIconColor, end: ColorManager.selectedIconColor)
//         .animate(CurvedAnimation(parent: _textColorController, curve: Curves.easeOut, reverseCurve: Curves.easeIn));
//     _textColorController.addListener(() {
//       if (mounted) {
//         setState(() {});
//       }
//     });
//
//     _iconColorController = AnimationController(duration: Constant.duration375, reverseDuration: Constant.duration300, vsync: this);
//     _iconColorAnimation = ColorTween(begin: ColorManager.mainIconColor, end: ColorManager.selectedIconColor)
//         .animate(CurvedAnimation(parent: _iconColorController, curve: Curves.easeOut, reverseCurve: Curves.easeIn));
//
//     _iconColorController.addListener(() {
//       if (mounted) {
//         setState(() {});
//       }
//     });
//
//     _letterSpacingController = AnimationController(duration: Constant.duration375, reverseDuration: Constant.duration300, vsync: this);
//     _letterSpacingAnimation =
//         Tween(begin: 0.0, end: 1.5).animate(CurvedAnimation(parent: _letterSpacingController, curve: Curves.easeOut, reverseCurve: Curves.easeIn));
//
//     _letterSpacingController.addListener(() {
//       if (mounted) {
//         setState(() {});
//       }
//     });
//
//     if (widgets.active!) {
//       _iconColorController.forward();
//       _textColorController.forward();
//       _letterSpacingController.forward();
//       _textColorController.reverse();
//     }
//
//     // To delay arrival of each Nav bar element
//     Future.delayed(Duration(milliseconds: 150 * (widgets.index! + 1)), () {
//       if (mounted) {
//         setState(() {
//           opacity = 1.0;
//         });
//       }
//     });
//   }
//
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//   }
//
//   @override
//   void dispose() {
//     _textColorController.dispose();
//     _iconColorController.dispose();
//     _letterSpacingController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     _textColorAnimation = ColorTween(begin: ColorManager.mainIconColor, end: ColorManager.selectedIconColor)
//         .animate(CurvedAnimation(parent: _textColorController, curve: Curves.easeOut, reverseCurve: Curves.easeIn));
//     _iconColorAnimation = ColorTween(begin: ColorManager.mainIconColor, end: ColorManager.selectedIconColor)
//         .animate(CurvedAnimation(parent: _iconColorController, curve: Curves.easeOut, reverseCurve: Curves.easeIn));
//
//     if (widgets.icon != null && !widgets.active!) {
//       _iconColorController.reverse();
//     }
//     return MouseRegion(
//       onEnter: (value) {
//         _textColorController.forward();
//         _letterSpacingController.forward();
//       },
//       onExit: (value) {
//         _textColorController.reverse();
//         _letterSpacingController.reverse();
//       },
//       opaque: false,
//       child: GestureDetector(
//         onTap: () {
//           widgets.onTap!();
//           _iconColorController.forward();
//           _textColorController.forward();
//           _letterSpacingController.forward();
//         },
//         child: Container(
//           decoration: BoxDecoration(
//             color: widgets.active! ? ColorManager.screenBackgroundColor : Colors.transparent,
//           ),
//           child: Row(
//             children: [
//               Container(
//                 height: 50,
//                 width: 5,
//                 decoration: BoxDecoration(
//                   color: widgets.active! ? ColorManager.selectedIconColor : Colors.transparent,
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(!isRTL ? 0.0 : 4.0),
//                     topLeft: Radius.circular(!isRTL ? 0.0 : 4.0),
//                     topRight: Radius.circular(!isRTL ? 4.0 : 0.0),
//                     bottomRight: Radius.circular(!isRTL ? 4.0 : 0.0),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     if (widgets.icon != null)
//                       AnimatedContainer(
//                         curve: Curves.easeOut,
//                         duration: Constant.duration375,
//                         height: widgets.active! ? 45.0 : 35.0,
//                         width: widgets.active! ? 45.0 : 35.0,
//                         child: Icon(
//                           widgets.icon,
//                           color: widgets.active! ? ColorManager.selectedIconColor : _iconColorAnimation.value,
//                         ),
//                       ),
//                     const SizedBox(height: 4.0),
//                     AnimatedContainer(
//                       duration: Constant.duration375,
//                       alignment: Alignment.center, //const Alignment(-0.9, 0.0),
//                       child: AnimatedOpacity(
//                         duration: Constant.duration375,
//                         opacity: opacity,
//                         child: Text(
//                           widgets.text!,
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: widgets.active! ? ColorManager.selectedIconColor : _textColorAnimation.value,
//                             letterSpacing: widgets.active! ? 1.5 : _letterSpacingAnimation.value,
//                             fontSize: 12.0,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ).addPaddingSymmetric(horizontal: 10.0, vertical: 20.0),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
