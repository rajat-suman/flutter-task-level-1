import '../models/frame1_item_model.dart';
import '../controller/dashboard_bookings_controller.dart';
import 'package:flutter/material.dart';
import 'package:rajat_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Frame1ItemWidget extends StatelessWidget {
  Frame1ItemWidget(
    this.frame1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame1ItemModel frame1ItemModelObj;

  var controller = Get.find<DashboardBookingsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 186.v,
      width: 168.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: frame1ItemModelObj.chirurgie!.value,
              width: 168.h,
              radius: BorderRadius.circular(
                7.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillTeal.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 14.v),
                  Obx(
                    () => Text(
                      frame1ItemModelObj.chirurgie1!.value,
                      style: CustomTextStyles.titleMediumOnPrimaryContainer16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
