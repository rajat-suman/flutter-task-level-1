import 'widgets/profileone_item_widget.dart';
import 'models/profileone_item_model.dart';
import 'package:rajat_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:rajat_s_application1/core/app_export.dart';
import 'controller/profile_one_controller.dart';
import 'models/profile_one_model.dart';

class ProfileOnePage extends StatefulWidget {
   ProfileOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  State<ProfileOnePage> createState() => _ProfileOnePageState();
}

class _ProfileOnePageState extends State<ProfileOnePage> {
  ProfileOneController controller =
      Get.put(ProfileOneController(ProfileOneModel().obs));

  @override
  Widget build(BuildContext context) {

  return  SizedBox(
        width: SizeUtils.width,
        child: Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Column(children: [
              SizedBox(height: 32.v),
              Column(
                children: [
                  _buildProfileOne(),
                  SizedBox(height: 350.v),
                  _buildBookClass(),
                ],
              ),
            ])));
  }

  /// Section Widget
  Widget _buildProfileOne() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 16.v,
          );
        },
        itemCount: controller.ProfileOneModelObj.value
            .profileoneItemList.value.length,
        itemBuilder: (context, index) {
          ProfileOneItemModel model = controller
              .ProfileOneModelObj
              .value
              .profileoneItemList
              .value[index];
          return ProfileOneItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBookClass() {
    return Container(
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
