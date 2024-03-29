import 'package:flutter/cupertino.dart';

import '../models/frame3_item_model.dart';
import '../controller/dashboard_bookings_controller.dart';
import 'package:rajat_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:rajat_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Frame3ItemWidget extends StatelessWidget {
  Frame3ItemWidget(
    this.frame3ItemModelObj, {
    Key? key,
    this.onTapComponent,
  }) : super(
          key: key,
        );

  Frame3ItemModel frame3ItemModelObj;

  var controller = Get.find<DashboardBookingsController>();

  VoidCallback? onTapComponent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 212.h,
      child: GestureDetector(
        onTap: () {
          onTapComponent?.call();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.outlineGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 100.v,
                width: 101.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Obx(
                      () => CustomImageView(
                        imagePath: frame3ItemModelObj.circleImage!.value,
                        height: 100.adaptSize,
                        width: 100.adaptSize,
                        radius: BorderRadius.circular(
                          50.h,
                        ),
                        alignment: Alignment.center,
                      ),
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
                  frame3ItemModelObj.drLeaLeicht!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 4.v),
              Obx(
                () => Text(
                  frame3ItemModelObj.headOfCardiac!.value,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMedium15,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(bottom: 3.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Obx(
                          () => Text(
                            frame3ItemModelObj.fortyEight!.value,
                            style: CustomTextStyles.bodyMedium15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
