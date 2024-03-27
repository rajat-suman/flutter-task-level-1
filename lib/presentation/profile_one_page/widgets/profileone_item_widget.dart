import '../models/profileone_item_model.dart';
import '../controller/profile_one_controller.dart';
import 'package:rajat_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:rajat_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ProfileOneItemWidget extends StatelessWidget {
  ProfileOneItemWidget(
    this.profileoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileOneItemModel profileoneItemModelObj;

  var controller = Get.find<ProfileOneController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Row(
            children: [
              SizedBox(
                height: 58.adaptSize,
                width: 58.adaptSize,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse99,
                      height: 58.adaptSize,
                      width: 58.adaptSize,
                      radius: BorderRadius.circular(
                        29.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 13.adaptSize,
                        width: 13.adaptSize,
                        margin: EdgeInsets.only(right: 2.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 2.h,
                          vertical: 4.v,
                        ),
                        decoration: AppDecoration.fillLightBlue.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder6,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 4.v,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 3.v,
                  bottom: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        profileoneItemModelObj.mUDrAmandeepGrewal!.value,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Obx(
                      () => Text(
                        profileoneItemModelObj.headOfCardiac!.value,
                        style: CustomTextStyles.bodyMediumGray500,
                      ),
                    ),
                    Obx(
                      () => Text(
                        profileoneItemModelObj.duration!.value,
                        style: CustomTextStyles.bodyMediumGray500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15.v),
        Container(
          width: 308.h,
          margin: EdgeInsets.only(
            left: 16.h,
            right: 66.h,
          ),
          child: Obx(
            () => Text(
              profileoneItemModelObj.loremIpsumDolor!.value,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumOnPrimary,
            ),
          ),
        ),
        SizedBox(height: 13.v),
        Obx(
          () => CustomImageView(
            imagePath: profileoneItemModelObj.image!.value,
            height: 282.v,
          ),
        ),
        SizedBox(height: 16.v),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      padding: EdgeInsets.all(4.h),
                      decoration: IconButtonStyleHelper.fillPrimary,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgAntDesignLikeOutlined,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 4.v,
                      ),
                      child: Obx(
                        () => Text(
                          profileoneItemModelObj.personenGefLlt!.value,
                          style: CustomTextStyles.bodyMediumErrorContainer,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Obx(
                    () => Text(
                      profileoneItemModelObj.commentsCounter!.value,
                      style: CustomTextStyles.bodyMediumErrorContainer,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 15.v),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            right: 183.h,
          ),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgTelevisionErrorcontainer,
                width: 14.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    profileoneItemModelObj.like!.value,
                    style: CustomTextStyles.bodyMediumErrorContainer15,
                  ),
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgContrast,
                height: 13.adaptSize,
                width: 13.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    profileoneItemModelObj.comment!.value,
                    style: CustomTextStyles.bodyMediumErrorContainer15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
