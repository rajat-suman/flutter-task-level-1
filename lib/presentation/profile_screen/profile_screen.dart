import 'package:flutter/material.dart';
import 'package:rajat_s_application1/core/app_export.dart';
import 'package:rajat_s_application1/presentation/profile_review_page/profile_review_page.dart';
import 'package:rajat_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:rajat_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:rajat_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:rajat_s_application1/widgets/custom_elevated_button.dart';
import 'package:rajat_s_application1/widgets/custom_icon_button.dart';
import 'package:readmore/readmore.dart';

import '../profile_one_page/profile_one_page.dart';
import 'controller/profile_controller.dart';
import 'models/profile_item_model.dart';
import 'widgets/profile_item_widget.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: CustomScrollView(
                  // padding: EdgeInsets.only(top: 22.v),
                  scrollDirection: Axis.vertical,
                  // physics: AlwaysScrollableScrollPhysics(),
                  //  physics: ClampingScrollPhysics(),
                  slivers: [
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 5.v),
                          child: Column(children: [
                            SizedBox(
                                height: 130.v,
                                width: 129.h,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 129.adaptSize,
                                              width: 129.adaptSize,
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse73,
                                                        height: 129.adaptSize,
                                                        width: 129.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(64.h),
                                                        alignment:
                                                            Alignment.center),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 4.h),
                                                        child: CustomIconButton(
                                                            height:
                                                                30.adaptSize,
                                                            width: 30.adaptSize,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    5.h),
                                                            decoration:
                                                                IconButtonStyleHelper
                                                                    .fillLightBlue,
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgGroup9)))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 130.v,
                                              width: 128.h,
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle126,
                                                        width: 128.h,
                                                        radius: BorderRadius
                                                            .circular(62.h),
                                                        alignment:
                                                            Alignment.center),
                                                    CustomIconButton(
                                                        height: 36.v,
                                                        width: 35.h,
                                                        padding:
                                                            EdgeInsets.all(7.h),
                                                        decoration:
                                                            IconButtonStyleHelper
                                                                .fillYellowTL18,
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        child: CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgGroup10))
                                                  ])))
                                    ])),
                            SizedBox(height: 17.v),
                            Text("msg_mudr_amandeep_grewal".tr,
                                style: CustomTextStyles.titleLargeBluegray900),
                            SizedBox(height: 3.v),
                            SizedBox(
                                width: 255.h,
                                child: Text("msg_3rd_semester_ge".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .bodyLargePrimaryContainer)),
                            SizedBox(height: 28.v),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(children: [
                                    Text("lbl_5_0".tr,
                                        style: theme.textTheme.bodyLarge),
                                    SizedBox(height: 8.v),
                                    Text("lbl_rating".tr,
                                        style: theme.textTheme.bodyMedium)
                                  ]),
                                  Padding(
                                      padding: EdgeInsets.only(left: 21.h),
                                      child: SizedBox(
                                          height: 45.v,
                                          child: VerticalDivider(
                                              width: 1.h,
                                              thickness: 1.v,
                                              indent: 9.h,
                                              endIndent: 10.h))),
                                  Padding(
                                      padding: EdgeInsets.only(left: 19.h),
                                      child: Column(children: [
                                        Text("lbl_43".tr,
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 7.v),
                                        Text("lbl_follower".tr,
                                            style: theme.textTheme.bodyMedium)
                                      ])),
                                  Padding(
                                      padding: EdgeInsets.only(left: 20.h),
                                      child: SizedBox(
                                          height: 45.v,
                                          child: VerticalDivider(
                                              width: 1.h,
                                              thickness: 1.v,
                                              indent: 9.h,
                                              endIndent: 10.h))),
                                  Padding(
                                      padding: EdgeInsets.only(left: 19.h),
                                      child: Column(children: [
                                        Text("lbl_doctor".tr,
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 7.v),
                                        Text("lbl_status".tr,
                                            style: theme.textTheme.bodyMedium)
                                      ]))
                                ]),
                            SizedBox(height: 46.v),
                            _buildProfileFollow(),
                            SizedBox(height: 47.v),
                            _buildCategorySwiper(),
                            SizedBox(
                                height: 2059.v,
                                child: TabBarView(
                                    controller: controller.controller,
                                    children: [
                                      _buildPersonTabContent(),
                                      ProfileOnePage(),
                                      ProfileReviewPage()
                                    ]))
                            /*    _buildSelectedTab()*/
                          ])),
                    )
                  ],
                ))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 27.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 18.v, bottom: 18.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "msg_henry_hildebrandt".tr),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: CustomImageView(imagePath: ImageConstant.more),
          )
        ]);
  }

  /// Section Widget
  Widget _buildFollow() {
    return CustomElevatedButton(
        width: 175.h,
        text: "lbl_follow".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 16.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgUser, width: 15.h)));
  }

  /// Section Widget
  Widget _buildGetInTouch() {
    return CustomElevatedButton(
        width: 175.h,
        text: "lbl_get_in_touch".tr,
        margin: EdgeInsets.only(left: 8.h),
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: CustomTextStyles.bodyMediumOnPrimary);
  }

  /// Section Widget
  Widget _buildProfileFollow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildFollow(), _buildGetInTouch()]));
  }

  /// Section Widget
  Widget _buildCategorySwiper() {
    final ProfileController _profileController = Get.put(ProfileController());
    return SizedBox(
        width: double.infinity,
        child: DefaultTabController(
          length: _profileController.myTabs.length,
          child: TabBar(
            controller: _profileController.controller,
            dividerHeight: .5.h,
            dividerColor: appTheme.gray30001,
            tabAlignment: TabAlignment.fill,
            unselectedLabelColor: appTheme.gray600,
            indicatorColor: theme.colorScheme.primary,
            labelColor: theme.colorScheme.primary,
            labelPadding: EdgeInsets.only(top: 10.h, bottom: 10.h),
            labelStyle: CustomTextStyles.titleMediumPrimary,
            unselectedLabelStyle: CustomTextStyles.bodyLargeGray600,
            tabs: _profileController.myTabs,
            onTap: (index) {
              _profileController.onItemTapped(index);
            },
          ),
          initialIndex: 0,
        ));
  }

  /// Section Widget
  Widget _buildFortyEight() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("msg_areas_of_expertise".tr,
                  style: theme.textTheme.titleLarge),
              Padding(
                  padding: EdgeInsets.only(top: 2.v, bottom: 6.v),
                  child: Text("lbl_see_all".tr,
                      style: CustomTextStyles.bodyMediumPrimary))
            ]));
  }

  /// Section Widget
  Widget _buildProfile() {
    return SizedBox(
        height: 186.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 15.h);
            },
            itemCount:
                controller.ProfileModelObj.value.profileItemList.value.length,
            itemBuilder: (context, index) {
              ProfileItemModel model =
                  controller.ProfileModelObj.value.profileItemList.value[index];
              return ProfileItemWidget(model);
            })));
  }

  Widget _buildPersonTabContent() {
    return SizedBox(
        width: SizeUtils.width,
        child: Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Column(children: [
              SizedBox(height: 33.v),
              _buildFortyEight(),
              SizedBox(height: 21.v),
              _buildProfile(),
              SizedBox(height: 31.v),
              Divider(indent: 16.h, endIndent: 16.h),
              SizedBox(height: 31.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text("lbl_more_about_me".tr,
                          style: theme.textTheme.titleLarge))),
              SizedBox(height: 14.v),
              SizedBox(
                  width: 354.h,
                  child: ReadMoreText("msg_i_am_the_head_surgeon".tr,
                      trimLines: 7,
                      colorClickableText: theme.colorScheme.onPrimary,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "lbl_read_more".tr,
                      moreStyle: CustomTextStyles.bodyLargeBlack900,
                      lessStyle: CustomTextStyles.bodyLargeBlack900)),
              SizedBox(height: 31.v),
              Divider(indent: 16.h, endIndent: 16.h),
              SizedBox(height: 32.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text("msg_experience_that".tr,
                          style: theme.textTheme.titleLarge))),
              SizedBox(height: 9.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      width: 328.h,
                      margin: EdgeInsets.only(left: 16.h, right: 45.h),
                      child: Text("msg_i_can_help_students".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyLarge))),
              SizedBox(height: 30.v),
              Divider(indent: 16.h, endIndent: 16.h),
              SizedBox(height: 33.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text("lbl_languages".tr,
                          style: theme.textTheme.titleLarge))),
              SizedBox(height: 13.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text("lbl_english_german".tr,
                          style: theme.textTheme.bodyLarge)))
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
