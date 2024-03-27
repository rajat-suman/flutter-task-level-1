import 'package:rajat_s_application1/presentation/dashboard_bookings_page/dashboard_bookings_page.dart';
import 'package:rajat_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:rajat_s_application1/core/app_export.dart';
import 'controller/dashboard_bookings_container_controller.dart';

class DashboardBookingsContainerScreen
    extends GetWidget<DashboardBookingsContainerController> {
  const DashboardBookingsContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.dashboardBookingsPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardBookingsPage;
      case BottomBarEnum.Explore:
        return "/";
      case BottomBarEnum.Network:
        return "/";
      case BottomBarEnum.Chat:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardBookingsPage:
        return DashboardBookingsPage();
      default:
        return DefaultWidget();
    }
  }
}
