import 'models/book_now_model.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:yash_s_application1/core/app_export.dart';
import 'package:yash_s_application1/widgets/custom_elevated_button.dart';
import 'provider/book_now_provider.dart';

class BookNowScreen extends StatefulWidget {
  const BookNowScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BookNowScreenState createState() => BookNowScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BookNowProvider(),
      child: BookNowScreen(),
    );
  }
}

class BookNowScreenState extends State<BookNowScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray50,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 470.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 51.v,
                        width: 168.h,
                        margin: EdgeInsets.only(left: 26.h),
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "msg_igi_airport_parking".tr,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                width: 71.h,
                                child: Text(
                                  "lbl_dashboard".tr,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyMediumOnPrimary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 469.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgParkingApp20,
                              height: 79.v,
                              width: 29.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(right: 6.h),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                height: 400.v,
                                width: double.maxFinite,
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgParkingApp19,
                                      height: 400.v,
                                      width: 360.h,
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgTelevision,
                                      height: 12.v,
                                      width: 25.h,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(
                                        top: 9.v,
                                        right: 11.h,
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
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 306.h,
                  margin: EdgeInsets.symmetric(horizontal: 27.h),
                  child: Text(
                    "msg_igi_airport_terminal_3".tr,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumOnErrorContainer,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              _buildEleven(context),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(left: 25.h),
                child: Text(
                  "lbl_current_price".tr,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 6.v),
              _buildSix(context),
              SizedBox(height: 7.v),
              _buildEight(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSeventeen(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_description".tr,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 2.v),
          SizedBox(
            width: 292.h,
            child: ReadMoreText(
              "msg_park_your_cars_safely".tr,
              trimLines: 2,
              colorClickableText: theme.colorScheme.onPrimary,
              trimMode: TrimMode.Line,
              trimCollapsedText: "lbl_read_more".tr,
              moreStyle: theme.textTheme.bodySmall,
              lessStyle: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 34.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "lbl_four_wheeler".tr,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleSmallLexendDeca,
            ),
          ),
          Text(
            "lbl_rs_60".tr,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleSmall,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 25.h,
          right: 34.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(
                "lbl_two_wheeler".tr,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleSmallLexendDeca,
              ),
            ),
            Text(
              "lbl_rs_40".tr,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventeen(BuildContext context) {
    return Container(
      height: 70.v,
      width: 306.h,
      margin: EdgeInsets.only(
        left: 27.h,
        right: 27.h,
        bottom: 29.v,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomElevatedButton(
            width: 306.h,
            text: "lbl_book_now".tr,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 304.h,
              child: Text(
                "msg_upgrade_to_premium".tr,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodySmall10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
