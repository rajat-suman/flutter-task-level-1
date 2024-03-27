import 'package:rajat_s_application1/presentation/dashboard_bookings_container_screen/controller/dashboard_bookings_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DashboardBookingsContainerScreen.
///
/// This class ensures that the DashboardBookingsContainerController is created when the
/// DashboardBookingsContainerScreen is first loaded.
class DashboardBookingsContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardBookingsContainerController());
  }
}
