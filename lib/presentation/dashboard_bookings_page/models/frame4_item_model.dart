import '../../../core/app_export.dart';

/// This class is used in the [frame4_item_widget] screen.
class Frame4ItemModel {
  Frame4ItemModel({
    this.drLeaLeicht,
    this.headOfCardiac,
    this.fortyEight,
    this.id,
  }) {
    drLeaLeicht = drLeaLeicht ?? Rx("Dr. Lea Leicht");
    headOfCardiac = headOfCardiac ?? Rx("Head of cardiac surgery");
    fortyEight = fortyEight ?? Rx("4.8");
    id = id ?? Rx("");
  }

  Rx<String>? drLeaLeicht;

  Rx<String>? headOfCardiac;

  Rx<String>? fortyEight;

  Rx<String>? id;
}
