import '../../../core/app_export.dart';

/// This class is used in the [frame_item_widget] screen.
class FrameItemModel {
  FrameItemModel({
    this.classDate,
    this.wedJunTwenty,
    this.eightHundredThousandEightHundr,
    this.drEmiliaWeininger,
    this.internalMedicine,
    this.id,
  }) {
    classDate = classDate ?? Rx("Class date ");
    wedJunTwenty = wedJunTwenty ?? Rx("Wed Jun 20");
    eightHundredThousandEightHundr =
        eightHundredThousandEightHundr ?? Rx("8:00-8:30");
    drEmiliaWeininger = drEmiliaWeininger ?? Rx("Dr. Emilia Weininger");
    internalMedicine = internalMedicine ?? Rx("Internal medicine");
    id = id ?? Rx("");
  }

  Rx<String>? classDate;

  Rx<String>? wedJunTwenty;

  Rx<String>? eightHundredThousandEightHundr;

  Rx<String>? drEmiliaWeininger;

  Rx<String>? internalMedicine;

  Rx<String>? id;
}
