import '../../../core/app_export.dart';
import '../models/profile_one_model.dart';

/// A controller class for the ProfileOnePage.
///
/// This class manages the state of the ProfileOnePage, including the
/// current ProfileOneModelObj
class ProfileOneController extends GetxController {
  ProfileOneController(this.ProfileOneModelObj);

  Rx<ProfileOneModel> ProfileOneModelObj;
}
