import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/profile_model.dart';

/// A controller class for the ProfileScreen.
///
/// This class manages the state of the ProfileScreen, including the
/// current ProfileModelObj
class ProfileController extends GetxController with GetSingleTickerProviderStateMixin {
  Rx<ProfileModel> ProfileModelObj = ProfileModel().obs;


  final List<Align> myTabs = <Align>[
    Align(
        alignment: Alignment.topCenter,
        child: Text(
          "lbl_person"
              .tr, /* style: CustomTextStyles.titleMediumPrimary*/
        )),
    Align(
        alignment: Alignment.topCenter,
        child: Text(
          "lbl_feed"
              .tr, /* style: CustomTextStyles.bodyLargeGray600*/
        )),
    Align(
        alignment: Alignment.topCenter,
        child: Text(
          "lbl_reviews"
              .tr, /*style: CustomTextStyles.bodyLargeGray600*/
        )),
  ];

  int selectedIndex=0;
  late TabController controller =TabController(vsync: this, length: 3);

  void onItemTapped(int index) {
    selectedIndex = index;// simulate database update while tabs change
    update(); // ← rebuilds any GetBuilder<TabX> widget
  }
}
