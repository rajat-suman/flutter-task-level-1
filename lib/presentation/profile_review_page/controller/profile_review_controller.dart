import 'package:rajat_s_application1/presentation/profile_one_page/models/profile_one_model.dart';

import '../../../core/app_export.dart';

/// A controller class for the ProfileOnePage.
///
/// This class manages the state of the ProfileOnePage, including the
/// current ProfileOneModelObj
class ProfileReviewController extends GetxController {
  ProfileReviewController(this.ProfileOneModelObj);

  Rx<ProfileOneModel> ProfileOneModelObj;
}
