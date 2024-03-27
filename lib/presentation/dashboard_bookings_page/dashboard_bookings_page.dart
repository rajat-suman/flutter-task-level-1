import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rajat_s_application1/core/app_export.dart';
import 'package:rajat_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:rajat_s_application1/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'controller/dashboard_bookings_controller.dart';
import 'models/dashboard_bookings_model.dart';
import 'models/frame1_item_model.dart';
import 'models/frame2_item_model.dart';
import 'models/frame3_item_model.dart';
import 'models/frame4_item_model.dart';
import 'models/frame_item_model.dart';
import 'widgets/frame1_item_widget.dart';
import 'widgets/frame2_item_widget.dart';
import 'widgets/frame3_item_widget.dart';
import 'widgets/frame4_item_widget.dart';
import 'widgets/frame_item_widget.dart';

class DashboardBookingsPage extends StatefulWidget {
  DashboardBookingsPage({Key? key}) : super(key: key);

  @override
  State<DashboardBookingsPage> createState() => _DashboardBookingsPageState();
}

class _DashboardBookingsPageState extends State<DashboardBookingsPage> {
  DashboardBookingsController controller =
      Get.put(DashboardBookingsController(DashboardBookingsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 30.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 235.h,
                                  margin: EdgeInsets.only(left: 16.h),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "lbl_hello_andreas".tr,
                                            style: CustomTextStyles
                                                .titleLargeff222222),
                                        TextSpan(
                                            text: "lbl".tr,
                                            style: CustomTextStyles
                                                .titleLargeSFProTextff222222),
                                        TextSpan(
                                            text: "msg_you_have_3_upcoming".tr,
                                            style: CustomTextStyles
                                                .bodyLargeff222222
                                                .copyWith(height: 1.45))
                                      ]),
                                      textAlign: TextAlign.left)),
                              SizedBox(height: 29.v),
                              _buildClassesPager(),
                              SizedBox(height: 24.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Obx(() => SizedBox(
                                      height: 5.v,
                                      child: AnimatedSmoothIndicator(
                                          activeIndex:
                                              controller.sliderIndex.value,
                                          count: controller
                                              .DashboardBookingsModelObj
                                              .value
                                              .frameItemList
                                              .value
                                              .length,
                                          axisDirection: Axis.horizontal,
                                          effect: ScrollingDotsEffect(
                                              spacing: 8,
                                              activeDotColor:
                                                  appTheme.gray60002,
                                              dotColor: appTheme.gray300,
                                              dotHeight: 5.v,
                                              dotWidth: 5.h))))),
                              SizedBox(height: 25.v),
                              _buildViewClasses(),
                              SizedBox(height: 48.v),
                              Align(
                                  alignment: Alignment.center,
                                  child:
                                      Divider(indent: 16.h, endIndent: 16.h)),
                              SizedBox(height: 48.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.h),
                                  child: _buildFrame(
                                      title: "msg_popular_subjects".tr,
                                      seeAll: "lbl_see_all".tr)),
                              SizedBox(height: 21.v),
                              _buildPopularSubjects(),
                              SizedBox(height: 50.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("msg_what_s_new_on_mentored".tr,
                                      style: theme.textTheme.titleLarge)),
                              SizedBox(height: 23.v),
                              _buildWhatsNew(),
                              SizedBox(height: 47.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.h),
                                  child: _buildFrame(
                                      title: "msg_feautured_doctors".tr,
                                      seeAll: "lbl_see_all".tr)),
                              SizedBox(height: 23.v),
                              _buildFeaturedDoctors(),
                              SizedBox(height: 55.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.h),
                                  child: _buildFrame(
                                      title: "msg_best_rated_doctors".tr,
                                      seeAll: "lbl_see_all".tr)),
                              SizedBox(height: 15.v),
                              _buildCategories(),
                              SizedBox(height: 24.v),
                              _buildBestRatedDoctors(),
                              SizedBox(height: 50.v),
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "lbl_mentored".tr,
                      style: CustomTextStyles.titleLargeNeueKabelff222222),
                  TextSpan(
                      text: "lbl_app".tr,
                      style: CustomTextStyles.titleMediumff222222)
                ]),
                textAlign: TextAlign.left)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup579,
              width: 50.h,
              fit: BoxFit.contain,
            ),
          )
        ]);
  }

  /// Section Widget
  Widget _buildClassesPager() {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 16.h),
        child: Obx(() => CarouselSlider.builder(
            options: CarouselOptions(
                height: 198.v,
                initialPage: 0,
                autoPlay: false,
                aspectRatio: 16 / 9,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  controller.sliderIndex.value = index;
                }),
            itemCount: controller
                .DashboardBookingsModelObj.value.frameItemList.value.length,
            itemBuilder: (context, index, realIndex) {
              FrameItemModel model = controller
                  .DashboardBookingsModelObj.value.frameItemList.value[index];
              return FrameItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildViewClasses() {
    return CustomElevatedButton(
        height: 56.v,
        text: "lbl_view_classes".tr,
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildPopularSubjects() {
    return SizedBox(
        height: 186.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 15.h);
            },
            itemCount: controller
                .DashboardBookingsModelObj.value.frame1ItemList.value.length,
            itemBuilder: (context, index) {
              Frame1ItemModel model = controller
                  .DashboardBookingsModelObj.value.frame1ItemList.value[index];
              return Frame1ItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildWhatsNew() {
    return SizedBox(
        height: 158.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .DashboardBookingsModelObj.value.frame2ItemList.value.length,
            itemBuilder: (context, index) {
              Frame2ItemModel model = controller
                  .DashboardBookingsModelObj.value.frame2ItemList.value[index];
              return Frame2ItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildFeaturedDoctors() {
    return SizedBox(
        height: 245.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .DashboardBookingsModelObj.value.frame3ItemList.value.length,
            itemBuilder: (context, index) {
              Frame3ItemModel model = controller
                  .DashboardBookingsModelObj.value.frame3ItemList.value[index];
              return Frame3ItemWidget(model, onTapComponent: () {
                onTapComponent();
              });
            })));
  }

  /// Section Widget
  Widget _buildAll() {
    return CustomElevatedButton(
        height: 34.v,
        width: 50.h,
        text: "lbl_all".tr,
        buttonStyle: CustomButtonStyles.outlineBlack);
  }

  /// Section Widget
  Widget _buildCategories() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 16.h),
        child: IntrinsicWidth(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                _buildAll(),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 7.v),
                    decoration: AppDecoration.outlineBlack900.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 1.v),
                          Text("lbl_anesthesiology".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)
                        ])),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 7.v),
                    decoration: AppDecoration.outlineBlack900.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 1.v),
                          Text("lbl_biochemistry".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)
                        ]))
              ])),
          Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 7.v),
              decoration: AppDecoration.outlineBlack900
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 1.v),
                    Text("lbl_biochemistry".tr,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumOnPrimary)
                  ])),
          Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v),
              decoration: AppDecoration.outlineBlack900
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
              child: Text("lbl_biochemistry".tr,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumOnPrimary)),
          Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v),
              decoration: AppDecoration.outlineBlack900
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
              child: Text("lbl_biochemistry".tr,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumOnPrimary))
        ])));
  }

  /// Section Widget
  Widget _buildBestRatedDoctors() {
    return SizedBox(
        height: 240.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .DashboardBookingsModelObj.value.frame4ItemList.value.length,
            itemBuilder: (context, index) {
              Frame4ItemModel model = controller
                  .DashboardBookingsModelObj.value.frame4ItemList.value[index];
              return Frame4ItemWidget(model);
            })));
  }

  /// Common widget
  Widget _buildFrame({
    required String title,
    required String seeAll,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: theme.textTheme.titleLarge!
                  .copyWith(color: theme.colorScheme.onPrimary)),
          Padding(
              padding: EdgeInsets.only(top: 3.v, bottom: 5.v),
              child: Text(seeAll,
                  style: CustomTextStyles.bodyMediumPrimary
                      .copyWith(color: theme.colorScheme.primary)))
        ]);
  }

  /// Navigates to the ProfileScreen when the action is triggered.
  onTapComponent() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }
}
