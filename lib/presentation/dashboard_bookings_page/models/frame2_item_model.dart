import '../../../core/app_export.dart';

/// This class is used in the [frame2_item_widget] screen.
class Frame2ItemModel {
  Frame2ItemModel({
    this.image,
    this.areasarenowcategoriz,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgRectangle338);
    areasarenowcategoriz = areasarenowcategoriz ??
        Rx("Areas are now categorized into Preclinical, Clinical and Dental");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? areasarenowcategoriz;

  Rx<String>? id;
}
