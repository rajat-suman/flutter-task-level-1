import 'package:flutter/material.dart';
import 'package:rajat_s_application1/core/app_export.dart';
import 'package:rajat_s_application1/presentation/profile_one_page/models/profileone_item_model.dart';

import '../controller/profile_review_controller.dart';

// ignore: must_be_immutable
class ProfileReviewWidget extends StatelessWidget {
  ProfileReviewWidget(
    this.profileoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileOneItemModel profileoneItemModelObj;

  var controller = Get.find<ProfileReviewController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 345.h,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 17.v,
          ),
          decoration: AppDecoration.outlineGray300.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 5.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse73,
                    height: 44.adaptSize,
                    width: 44.adaptSize,
                    radius: BorderRadius.circular(
                      22.h,
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
                            profileoneItemModelObj.fredRichard!.value,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 4.v),
                        Obx(
                          () => Text(
                            profileoneItemModelObj.duration!.value,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              color: Colors.grey,
                              fontSize: 13.fSize,
                            ),
                            // CustomTextStyles.bodyMediumSecondaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Obx(
                              () => Text(profileoneItemModelObj.four!.value,
                              style: TextStyle(
                                  color: Colors.amberAccent,
                                  fontSize: 17.fSize,
                                  fontWeight: FontWeight.normal)
                            // style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgSignal,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            top: 2.v,
                            bottom: 4.v,
                          ),
                        ),
                      ],
                    )
                  )

                  /*Container(
                    width: 29.h,
                    margin: EdgeInsets.only(
                      left: 129.h,
                      top: 9.v,
                      bottom: 13.v,
                    ),
                    child: ,
                  ),*/
                ],
              ),
              SizedBox(height: 16.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lorem ipsum dolor sit amet consectetur. Sit tortor vulputate tortor rhoncus habitant egestas magna.Lorem ipsum dolor sit amet consectetur. Sit tortor vulputate tortor rhoncus habit.",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: Colors.black,
                      fontSize: 13.fSize,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Row(
                    children: [
                      Text("Read more",
                          style: theme.textTheme.titleLarge!.copyWith(
                              color: Color(0XFF222222),
                              fontSize: 15.fSize,
                              decoration: TextDecoration.underline)),

                      Padding(
                        padding:  EdgeInsets.only(left: 8.0),
                        child: RotationTransition(
                          turns: new AlwaysStoppedAnimation(180 / 360),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                            height: 9.adaptSize,
                            width: 9.adaptSize,
                            margin: EdgeInsets.only(
                              left: 4.h,
                              top: 2.v,
                              bottom: 4.v,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
              // RichText(
              //   text: TextSpan(children: [
              //     TextSpan(text: "Lorem ipsum dolor sit amet consectetur. Sit tortor vulputate tortor rhoncus habitant egestas magna.Lorem ipsum dolor sit amet consectetur. Sit tortor vulputate tortor rhoncus habit.",
              //       style:   theme.textTheme.bodyMedium!.copyWith(
              //         color: Colors.black,
              //         fontSize: 13.5.fSize,
              //       ),
              //     ),
              //     TextSpan(
              //         text: "\n\nRead more",
              //         style: theme.textTheme.titleLarge!.copyWith(
              //           color: Color(0XFF222222),
              //           fontSize: 18.fSize,
              //             decoration: TextDecoration.underline
              //         )
              //     ),
              //
              //   ])
              // )
            ],
          ),
        ),
      ),
    );
  }
}
