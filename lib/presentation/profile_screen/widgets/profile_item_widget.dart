import '../models/profile_item_model.dart';
import '../controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:rajat_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget(
    this.profileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileItemModel profileItemModelObj;

  var controller = Get.find<ProfileController>();

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
              imagePath: profileItemModelObj.chirurgie!.value,
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
                      profileItemModelObj.chirurgie1!.value,
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
