import 'package:flutter/material.dart';
import 'package:rajat_s_application1/core/app_export.dart';
import 'package:rajat_s_application1/presentation/profile_one_page/models/profile_one_model.dart';
import 'package:rajat_s_application1/widgets/custom_elevated_button.dart';

import '../../widgets/custom_outlined_button.dart';
import '../profile_one_page/models/profileone_item_model.dart';
import 'controller/profile_review_controller.dart';
import 'widgets/profile_review_widget.dart';

class ProfileReviewPage extends StatefulWidget {
  ProfileReviewPage({Key? key})
      : super(
          key: key,
        );

  @override
  State<ProfileReviewPage> createState() => _ProfileReviewPageState();
}

class _ProfileReviewPageState extends State<ProfileReviewPage> {
  ProfileReviewController controller =
      Get.put(ProfileReviewController(ProfileOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return Flex(
        direction: Axis.vertical,
        children:[
          Expanded(
            child: Padding(
                padding: EdgeInsets.only(bottom: 5.v),
                child: ListView(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          top: 40.v,
                          right: 78.h,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgSignal,
                                  height: 30.adaptSize,
                                  width: 30.adaptSize,
                                  margin: EdgeInsets.only(
                                    top: 6.v,
                                    bottom: 7.v,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 12.h),
                                  child: Text(
                                    "lbl_5_0".tr,
                                    style: TextStyle(
                                        color: Colors.amberAccent,
                                        fontSize: 40.fSize,
                                        fontWeight: FontWeight
                                            .bold) /*theme.textTheme.displaySmall*/,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 33.v),
                            Text(
                              "msg_what_others_have".tr,
                              style: theme.textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ),
                    ),
                    _buildReviews(),
                    CustomOutlinedButton(
                      width: 358.h,
                      text: "msg_read_all_399_reviews".tr,
                      alignment: Alignment.bottomCenter,
                    ),
                    _buildBookClass(),
                  ],
                )),
          )
        ]);

  }

  Widget _buildReviews() {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 260.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 16.v,
              bottom: 10.v,
            ),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount: controller
                .ProfileOneModelObj.value.profileoneItemList.value.length,
            itemBuilder: (context, index) {
              ProfileOneItemModel model = controller
                  .ProfileOneModelObj.value.profileoneItemList.value[index];
              return ProfileReviewWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBookClass() {
    return Container(
      margin: EdgeInsets.only(top: 230.v),
      padding: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v),
      decoration: AppDecoration.outlineGray30001,
      child: Column(
        children: [
          SizedBox(height: 8.v),
          CustomElevatedButton(
            height: 56.v,
            text: "lbl_book_class".tr,
            buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
          ),
        ],
      ),
    );
  }
}
