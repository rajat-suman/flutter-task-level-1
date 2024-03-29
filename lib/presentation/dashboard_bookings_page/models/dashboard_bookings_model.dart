import '../../../core/app_export.dart';
import 'frame_item_model.dart';
import 'frame1_item_model.dart';
import 'frame2_item_model.dart';
import 'frame3_item_model.dart';
import 'frame4_item_model.dart';

/// This class defines the variables used in the [dashboard_bookings_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardBookingsModel {
  Rx<List<FrameItemModel>> frameItemList = Rx([
    FrameItemModel(
        classDate: "Class date ".obs,
        wedJunTwenty: "Wed Jun 20".obs,
        eightHundredThousandEightHundr: "8:00-8:30".obs,
        drEmiliaWeininger: "Dr. Emilia Weininger".obs,
        internalMedicine: "Internal medicine".obs),
    FrameItemModel(
        classDate: "Class date ".obs,
        wedJunTwenty: "Wed Jun 20".obs,
        eightHundredThousandEightHundr: "8:00-8:30".obs,
        drEmiliaWeininger: "Dr. Emilia Weininger".obs,
        internalMedicine: "Internal medicine".obs),
    FrameItemModel(
        classDate: "Class date ".obs,
        wedJunTwenty: "Wed Jun 20".obs,
        eightHundredThousandEightHundr: "8:00-8:30".obs,
        drEmiliaWeininger: "Dr. Emilia Weininger".obs,
        internalMedicine: "Internal medicine".obs)
  ]);

  Rx<List<Frame1ItemModel>> frame1ItemList = Rx([
    Frame1ItemModel(
        chirurgie: ImageConstant.imgRectangle284.obs,
        chirurgie1: "Chirurgie".obs),
    Frame1ItemModel(chirurgie: ImageConstant.imgRectangle284186x168.obs),
    Frame1ItemModel(chirurgie: ImageConstant.imgRectangle2842.obs)
  ]);
  // Frame1ItemModel(chirurgie: ImageConstant.imgRectangle2841.obs),


  Rx<List<Frame2ItemModel>> frame2ItemList = Rx([
    Frame2ItemModel(
        image: ImageConstant.imgRectangle338.obs,
        areasarenowcategoriz:
            "Areas are now categorized into Preclinical, Clinical and Dental"
                .obs),
    Frame2ItemModel(
        image: ImageConstant.imgRectangle339.obs,
        areasarenowcategoriz:
            "You can get tutoring from other students to clarify crucial issues"
                .obs),
    Frame2ItemModel(
        image: ImageConstant.imgRectangle340.obs,
        areasarenowcategoriz:
            "Talk to doctors with different specialties and ask them about their experiences."
                .obs)
  ]);

  Rx<List<Frame3ItemModel>> frame3ItemList = Rx([
    Frame3ItemModel(
        circleImage: ImageConstant.imgEllipse84.obs,
        drLeaLeicht: "MUDr. Amandeep Grewal".obs,
        headOfCardiac: "Head of cardiac surgery".obs,
        fortyEight: "4.8".obs),
    Frame3ItemModel(
        circleImage: ImageConstant.imgEllipse84100x100.obs,
        drLeaLeicht: "Dr. Lea Leicht".obs,
        headOfCardiac: "Head of cardiac surgery".obs,
        fortyEight: "4.8".obs),
    Frame3ItemModel(
        circleImage: ImageConstant.imgEllipse84100x100.obs,
        drLeaLeicht: "Dr. Lea Leicht".obs,
        headOfCardiac: "Head of cardiac surgery".obs,
        fortyEight: "4.8".obs)
  ]);
  Rx<List<Frame3ItemModel>> frame3ItemList2 = Rx([
    Frame3ItemModel(
        circleImage: ImageConstant.imgEllipse84100x100.obs,
        drLeaLeicht: "Dr. Lea Leicht".obs,
        headOfCardiac: "Head of cardiac surgery".obs,
        fortyEight: "4.8".obs),
    Frame3ItemModel(
        circleImage: ImageConstant.imgEllipse84100x100.obs,
        drLeaLeicht: "Dr. Lea Leicht".obs,
        headOfCardiac: "Head of cardiac surgery".obs,
        fortyEight: "4.8".obs),
    Frame3ItemModel(
        circleImage: ImageConstant.imgEllipse84100x100.obs,
        drLeaLeicht: "Dr. Lea Leicht".obs,
        headOfCardiac: "Head of cardiac surgery".obs,
        fortyEight: "4.8".obs),
    Frame3ItemModel(
        circleImage: ImageConstant.imgEllipse84100x100.obs,
        drLeaLeicht: "Dr. Lea Leicht".obs,
        headOfCardiac: "Head of cardiac surgery".obs,
        fortyEight: "4.8".obs)
  ]);


}
