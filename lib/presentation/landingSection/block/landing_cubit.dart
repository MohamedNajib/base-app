
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'landing_state.dart';

class LandingCubit extends Cubit<LandingState> {
  //final MenuItemsUseCase menuItemsUseCase;

  LandingCubit() : super(LandingInitial());

  static LandingCubit get(context) => BlocProvider.of(context);

  void start() {
    //getMenuItems();
  }

  // final List<NavModel> _parentNavItemSList = [];
  // final List<NavModel> _childNavItemSList = [];

  // void getMenuItems() {
  //   menuItemsUseCase.execute(NoParams()).then((value) {
  //     value.fold(
  //       (failure) {
  //         // TODO: Emit Error State .
  //         print('Error -- Error -- Error -- Error -- Error -- Error');
  //       },
  //       (menuData) {
  //         print('Success -- Success -- Success -- Success -- Success -- Success');
  //         inputState.add(SuccessState('Success State Dialog.'));
  //         for (var element in menuData.menuItemsList) {
  //           if (element.parentId == -1) {
  //             _parentNavItemSList.add(element);
  //           }
  //           if (element.parentId != -1) {
  //             _childNavItemSList.add(element);
  //           }
  //         }
  //         onParentNavItemClicked(_parentNavItemSList[0]);
  //       },
  //     );
  //   });
  // }



  /// +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
  /// | Maim Menu Items functionality                                                           |
  /// +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
  int mainNavigationBarSelectedIndex = 0;

  // List<NavModel> get parentNavItemsList => [..._parentNavItemSList];
  // // List<NavModel> get parentNavItemsList => [..._parentNavItemsList];
  //
  // void onParentNavItemClicked(NavModel element) {
  //   for (int i = 0; i < childNavItemsList.length; i++) {
  //     childNavItemsList[i].isChocked = false;
  //   }
  //   childNavItemsByIndex.clear();
  //   for (int i = 0; i < parentNavItemsList.length; i++) {
  //     parentNavItemsList[i].isChocked = false;
  //   }
  //   parentNavItemsList[parentNavItemsList.indexOf(element)].isChocked = true;
  //   mainNavigationBarSelectedIndex = element.id;
  //   getElementsByParentID(element);
  // }

  /// +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
  /// | Child Menu Items functionality                                                          |
  /// +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
  // int childNavigationBarSelectedIndex = 0;
  // int childNavigationBarHoverIndex = 0;
  //
  // List<NavModel> get childNavItemsList => [..._childNavItemSList];
  // // List<NavModel> get childNavItemsList => [..._childNavItemsList];
  // List<NavModel> childNavItemsByIndex = [];
  //
  // int viewPageIndex = 0;
  //
  // void getPagePyId(NavModel element) {
  //   if (element.id == 0 && element.itemStatus == ItemStatus.single) {
  //     print('الرئيسية');
  //     viewPageIndex = 0;
  //   } else if (element.id == 5 && element.itemStatus == ItemStatus.single) {
  //     print('الإعدادات');
  //     viewPageIndex = 1;
  //   } else if (childNavigationBarSelectedIndex == 1 && element.itemStatus == ItemStatus.child) {
  //     print('شجرة الحسابات');
  //     viewPageIndex = 2;
  //   } else if (childNavigationBarSelectedIndex == 2 && element.itemStatus == ItemStatus.child) {
  //     print('مراكز التكلفة');
  //     viewPageIndex = 18;
  //   }
  //   emit(UpdateMainMenuState());
  // }

  // void getElementsByParentID(NavModel parent) {
  //   for (var element in childNavItemsList) {
  //     if (element.parentId == parent.id) {
  //       childNavItemsByIndex.add(element);
  //     }
  //   }
  //
  //   if (childNavItemsByIndex.isNotEmpty) {
  //     childNavItemsByIndex[0].isChocked = true;
  //     childNavigationBarSelectedIndex = childNavItemsByIndex[0].id;
  //     getPagePyId(childNavItemsByIndex[0]);
  //   } else {
  //     getPagePyId(parent);
  //   }
  // }
  //
  // void onChildNavItemsHovered(NavModel element) async {
  //   for (int i = 0; i < childNavItemsList.length; i++) {
  //     childNavItemsList[i].isHover = false;
  //   }
  //   childNavItemsList[childNavItemsList.indexOf(element)].isHover = true;
  //   childNavigationBarHoverIndex = childNavItemsList.indexOf(element);
  //   emit(UpdateMainMenuState());
  // }
  //
  // void onChildNavItemsExit(NavModel element) async {
  //   for (int i = 0; i < childNavItemsList.length; i++) {
  //     childNavItemsList[i].isHover = false;
  //   }
  //   emit(UpdateMainMenuState());
  // }
  //
  // void onChildNavItemsClicked(NavModel element) async {
  //   for (int i = 0; i < childNavItemsList.length; i++) {
  //     childNavItemsList[i].isChocked = false;
  //   }
  //   childNavItemsList[childNavItemsList.indexOf(element)].isChocked = true;
  //   childNavigationBarSelectedIndex = element.id;
  //   getPagePyId(element);
  //
  //   // childNavigationBarSelectedIndex = childNavItemsList.indexOf(element);
  // }
  //
  // @override
  // void dispose() {
  //   super.dispose();
  // }
  //
  // @override
  // void start() {
  //   getMenuItems();
  // }
}

