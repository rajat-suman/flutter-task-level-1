import '../models/frame4_item_model.dart';
import '../controller/dashboard_bookings_controller.dart';
import 'package:rajat_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:rajat_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Frame4ItemWidget extends StatelessWidget {
  Frame4ItemWidget(
    this.frame4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame4ItemModel frame4ItemModelObj;

  var controller = Get.find<DashboardBookingsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: 212.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 100.v,
            width: 101.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse84100x100,
                  height: 100.adaptSize,
                  width: 100.adaptSize,
                  radius: BorderRadius.circular(
                    50.h,
                  ),
                  alignment: Alignment.center,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    alignment: Alignment.bottomRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgTelevision,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Obx(
            () => Text(
              frame4ItemModelObj.drLeaLeicht!.value,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 4.v),
          Obx(
            () => Text(
              frame4ItemModelObj.headOfCardiac!.value,
              style: CustomTextStyles.bodyMedium15,
            ),
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSignal,
                height: 14.adaptSize,
                width: 14.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Obx(
                  () => Text(
                    frame4ItemModelObj.fortyEight!.value,
                    style: CustomTextStyles.bodyMedium15,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
