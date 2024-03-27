import '../../../core/app_export.dart';
import '../models/dashboard_bookings_container_model.dart';

/// A controller class for the DashboardBookingsContainerScreen.
///
/// This class manages the state of the DashboardBookingsContainerScreen, including the
/// current DashboardBookingsContainerModelObj
class DashboardBookingsContainerController extends GetxController {
  Rx<DashboardBookingsContainerModel>
      DashboardBookingsContainerModelObj =
      DashboardBookingsContainerModel().obs;

  @override
  void onReady() {
    // Future.delayed(const Duration(milliseconds: 3000), () {
    //   Get.offNamed(
    //     AppRoutes.ProfileScreen,
    //   );
    // });
  }
}
