// import 'package:accounts/presentation/landingSection/block/landing_cubit.dart';
// import 'package:accounts/presentation/src/color_manager.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:size_config/size_config.dart';
//
// class SupMenu extends StatelessWidget {
//   SupMenu({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     LandingCubit landingCubit = LandingCubit.get(context);
//     return BlocConsumer<LandingCubit, LandingState>(
//       listener: (context, state) {},
//       builder: (context, state) {
//         return Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Expanded(
//                 child: Column(
//               children: [
//                 Text(
//                   'This is my Text',
//                   style: TextStyle(fontSize: 20, color: Color(0xFF000000)),
//                 ),
//                 Text(
//                   'This is my Text This is my Text This is my Text This is my Text',
//                   style: TextStyle(fontSize: 16, color: Color(0xFF000000).withOpacity(0.4)),
//                 ),
//                 Text(
//                   'This is my Text This is my Text This is my Text This is my Text',
//                   style: TextStyle(fontSize: 16, color: Color(0xFF000000).withOpacity(0.5)),
//                 ),
//               ],
//             )),
//             if (landingCubit.childNavItemsByIndex.isEmpty) const SizedBox(width: 0, height: 0),
//             if (landingCubit.childNavItemsByIndex.isNotEmpty) const SizedBox(width: 16),
//             if (landingCubit.childNavItemsByIndex.isNotEmpty)
//               Container(
//                 width: 18.w,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   border: Border.all(width: 1, color: ColorManager.lineColor),
//                 ),
//                 child: ListView.separated(
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   itemCount: landingCubit.childNavItemsByIndex.length,
//                   separatorBuilder: (BuildContext context, int index) {
//                     //return Divider();
//                     return Container(
//                       height: 1,
//                       color: ColorManager.lineColor,
//                     );
//                   },
//                   itemBuilder: (context, index) {
//                     return MouseRegion(
//                       onEnter: (value) {
//                         landingCubit.onChildNavItemsHovered(landingCubit.childNavItemsByIndex[index]);
//                       },
//                       onExit: (value) {
//                         landingCubit.onChildNavItemsExit(landingCubit.childNavItemsByIndex[index]);
//                       },
//                       opaque: false,
//                       child: ListTile(
//                         //focusColor: Colors.white.withOpacity(0.1),
//                         hoverColor: ColorManager.hoverColor,
//                         tileColor: landingCubit.childNavItemsByIndex[index].isChocked ? ColorManager.isChockedColor : Colors.transparent,
//                         title: Row(
//                           children: [
//                             Icon(
//                               landingCubit.childNavItemsByIndex[index].icon,
//                               size: 14,
//                               color: landingCubit.childNavItemsByIndex[index].isChocked ? ColorManager.selectedIconColor : ColorManager.mainIconColor,
//                             ),
//                             const SizedBox(width: 6),
//                             FittedBox(
//                               fit: BoxFit.none,
//                               child: Text(
//                                 landingCubit.childNavItemsByIndex[index].title,
//                                 maxLines: 1,
//                                 textAlign: TextAlign.start,
//                                 style: TextStyle(
//                                     color: landingCubit.childNavItemsByIndex[index].isChocked
//                                         ? ColorManager.selectedIconColor
//                                         : landingCubit.childNavItemsByIndex[index].isHover
//                                             ? ColorManager.mainIconColor
//                                             : ColorManager.mainIconColor,
//                                     fontSize: 13.0,
//                                     fontWeight: landingCubit.childNavItemsByIndex[index].isChocked ? FontWeight.bold : FontWeight.normal),
//                               ),
//                             ),
//                           ],
//                         ),
//                         onTap: () => landingCubit.onChildNavItemsClicked(landingCubit.childNavItemsByIndex[index]),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//           ],
//         );
//       },
//     );
//   }
// }
