import '../models/frame_item_model.dart';
import '../controller/dashboard_bookings_controller.dart';
import 'package:flutter/material.dart';
import 'package:rajat_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  FrameItemWidget(
    this.frameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrameItemModel frameItemModelObj;

  var controller = Get.find<DashboardBookingsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              frameItemModelObj.classDate!.value,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 7.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIcRoundAccessTime,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    frameItemModelObj.wedJunTwenty!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              Container(
                height: 5.adaptSize,
                width: 5.adaptSize,
                margin: EdgeInsets.only(
                  left: 8.h,
                  top: 6.v,
                  bottom: 6.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                  borderRadius: BorderRadius.circular(
                    2.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    frameItemModelObj.eightHundredThousandEightHundr!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.v),
          Divider(),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              right: 64.h,
            ),
            child: Row(
              children: [
                SizedBox(
                  height: 67.adaptSize,
                  width: 67.adaptSize,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle151,
                        height: 67.adaptSize,
                        width: 67.adaptSize,
                        radius: BorderRadius.circular(
                          33.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 19.adaptSize,
                          width: 19.adaptSize,
                          padding: EdgeInsets.all(4.h),
                          decoration: AppDecoration.fillLightBlue.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder9,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgTelevision,
                            width: 9.h,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 53.v,
                  width: 167.h,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    top: 11.v,
                    bottom: 11.v,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsUp,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(
                              () => Text(
                                frameItemModelObj.drEmiliaWeininger!.value,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            SizedBox(height: 5.v),
                            Padding(
                              padding: EdgeInsets.only(left: 18.h),
                              child: Obx(
                                () => Text(
                                  frameItemModelObj.internalMedicine!.value,
                                  style: CustomTextStyles.bodyMediumGray60001,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmark,
            height: 14.adaptSize,
            width: 14.adaptSize,
            alignment: Alignment.centerRight,
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
