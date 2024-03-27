import '../../../core/app_export.dart';

/// This class is used in the [frame3_item_widget] screen.
class Frame3ItemModel {
  Frame3ItemModel({
    this.circleImage,
    this.drLeaLeicht,
    this.headOfCardiac,
    this.fortyEight,
    this.id,
  }) {
    circleImage = circleImage ?? Rx(ImageConstant.imgEllipse84);
    drLeaLeicht = drLeaLeicht ?? Rx("MUDr. Amandeep Grewal");
    headOfCardiac = headOfCardiac ?? Rx("Head of cardiac surgery");
    fortyEight = fortyEight ?? Rx("4.8");
    id = id ?? Rx("");
  }

  Rx<String>? circleImage;

  Rx<String>? drLeaLeicht;

  Rx<String>? headOfCardiac;

  Rx<String>? fortyEight;

  Rx<String>? id;
}
