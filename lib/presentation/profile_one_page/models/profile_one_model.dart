import '../../../core/app_export.dart';
import 'profileone_item_model.dart';

/// This class defines the variables used in the [profile_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileOneModel {
  Rx<List<ProfileOneItemModel>> profileoneItemList = Rx([
    ProfileOneItemModel(
        mUDrAmandeepGrewal: "MUDr. Amandeep Grewal".obs,
        headOfCardiac: "Head of  cardiac surgery".obs,
        duration: "2 days ago".obs,
        loremIpsumDolor:
            "Lorem ipsum dolor sit amet consectetur. Sit tortor vulputate tortor rhoncus habitant egestas magna."
                .obs,
        image: ImageConstant.imgRectangle352.obs,
        personenGefLlt: "43 Personen gefällt das".obs,
        commentsCounter: "3 Comments".obs,
        like: "Like".obs,
        comment: "Comment".obs),
    ProfileOneItemModel(
        mUDrAmandeepGrewal: "MUDr. Amandeep Grewal".obs,
        headOfCardiac: "Head of  cardiac surgery".obs,
        duration: "2 days ago".obs,
        loremIpsumDolor:
            "Lorem ipsum dolor sit amet consectetur. Sit tortor vulputate tortor rhoncus habitant egestas magna."
                .obs,
        image: ImageConstant.imgRectangle352.obs,
        like: "Like".obs,
        comment: "Comment".obs),
    ProfileOneItemModel(like: "Like".obs, comment: "Comment".obs)
  ]);
}
