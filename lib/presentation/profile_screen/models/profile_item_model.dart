import '../../../core/app_export.dart';

/// This class is used in the [profile_item_widget] screen.
class ProfileItemModel {
  ProfileItemModel({
    this.chirurgie,
    this.chirurgie1,
    this.id,
  }) {
    chirurgie = chirurgie ?? Rx(ImageConstant.imgRectangle284);
    chirurgie1 = chirurgie1 ?? Rx("Chirurgie");
    id = id ?? Rx("");
  }

  Rx<String>? chirurgie;

  Rx<String>? chirurgie1;

  Rx<String>? id;
}
