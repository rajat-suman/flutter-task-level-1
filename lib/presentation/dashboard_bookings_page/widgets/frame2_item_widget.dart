import '../models/frame2_item_model.dart';
import '../controller/dashboard_bookings_controller.dart';
import 'package:flutter/material.dart';
import 'package:rajat_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Frame2ItemWidget extends StatelessWidget {
  Frame2ItemWidget(
    this.frame2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame2ItemModel frame2ItemModelObj;

  var controller = Get.find<DashboardBookingsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 158.v,
      width: 326.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: frame2ItemModelObj.image!.value,
              height: 158.v,
              radius: BorderRadius.circular(
                8.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 261.h,
              margin: EdgeInsets.only(
                left: 16.h,
                top: 12.v,
              ),
              child: Obx(
                () => Text(
                  frame2ItemModelObj.areasarenowcategoriz!.value,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleLargeOnPrimaryContainer.copyWith(
                    height: 1.35,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
