import '../../../core/app_export.dart';
import '../models/dashboard_bookings_model.dart';

/// A controller class for the DashboardBookingsPage.
///
/// This class manages the state of the DashboardBookingsPage, including the
/// current DashboardBookingsModelObj
class DashboardBookingsController extends GetxController {
  DashboardBookingsController(this.DashboardBookingsModelObj);

  Rx<DashboardBookingsModel> DashboardBookingsModelObj;

  Rx<int> sliderIndex = 0.obs;
}
