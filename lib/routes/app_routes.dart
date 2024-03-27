import 'package:get/get.dart';
import 'package:rajat_s_application1/presentation/dashboard_bookings_container_screen/dashboard_bookings_container_screen.dart';

import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import '../presentation/dashboard_bookings_container_screen/binding/dashboard_bookings_container_binding.dart';
import '../presentation/profile_screen/binding/profile_binding.dart';
import '../presentation/profile_screen/profile_screen.dart';

class AppRoutes {
  static const String dashboardBookingsContainerScreen =
      '/dashboard_bookings_container_screen';

  static const String dashboardBookingsPage = '/dashboard_bookings_page';

  static const String profileScreen = '/profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: dashboardBookingsContainerScreen,
      page: () => DashboardBookingsContainerScreen(),
      bindings: [
        DashboardBookingsContainerBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => DashboardBookingsContainerScreen(),
      bindings: [
        DashboardBookingsContainerBinding(),
      ],
    )
  ];
}
