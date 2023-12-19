import '../home_screen/widgets/home_item_widget.dart';
import 'dart:async';
import 'models/home_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yash_s_application1/core/app_export.dart';
import 'package:yash_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:yash_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:yash_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:yash_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:yash_s_application1/widgets/custom_search_view.dart';
import 'provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeProvider(), child: HomeScreen());
  }
}

// ignore_for_file: must_be_immutable
class HomeScreenState extends State<HomeScreen> {
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 5.v),
                    child: SizedBox(
                        height: 784.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: 784.v,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                      borderRadius: BorderRadius.circular(60.h),
                                      border: Border.all(
                                          color: appTheme.black900, width: 1.h),
                                      boxShadow: [
                                        BoxShadow(
                                            color: appTheme.black900
                                                .withOpacity(0.25),
                                            spreadRadius: 2.h,
                                            blurRadius: 2.h,
                                            offset: Offset(0, 4))
                                      ]))),
                          _buildViewParkingArea(context),
                          _buildAvailPremiumFeatures(context),
                          _buildNearbyParkingArea(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 42.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrow2,
            margin: EdgeInsets.only(left: 10.h, top: 37.v, bottom: 15.v)),
        title: AppbarTitleImage(
            imagePath: ImageConstant.imgParkingApp13,
            margin: EdgeInsets.only(left: 28.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgUntitledDesign,
              margin: EdgeInsets.fromLTRB(12.h, 6.v, 12.h, 4.v))
        ]);
  }

  /// Section Widget
  Widget _buildViewParkingArea(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 9.h, top: 50.v, right: 9.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "lbl_view".tr, style: theme.textTheme.titleLarge),
                    TextSpan(
                        text: "lbl_parking_area".tr,
                        style: CustomTextStyles.titleLargeErrorContainer),
                    TextSpan(
                        text: "lbl_near_you".tr,
                        style: theme.textTheme.titleLarge)
                  ]),
                  textAlign: TextAlign.center),
              SizedBox(height: 4.v),
              SizedBox(
                  height: 182.v,
                  width: 341.h,
                  child: GoogleMap(
                      mapType: MapType.normal,
                      initialCameraPosition: CameraPosition(
                          target:
                              LatLng(37.43296265331129, -122.08832357078792),
                          zoom: 14.4746),
                      onMapCreated: (GoogleMapController controller) {
                        googleMapController.complete(controller);
                      },
                      zoomControlsEnabled: false,
                      zoomGesturesEnabled: false,
                      myLocationButtonEnabled: false,
                      myLocationEnabled: false)),
              SizedBox(height: 33.v),
              Padding(
                  padding: EdgeInsets.only(left: 19.h, right: 12.h),
                  child: Selector<HomeProvider, TextEditingController?>(
                      selector: (context, provider) =>
                          provider.searchController,
                      builder: (context, searchController, child) {
                        return CustomSearchView(
                            controller: searchController,
                            hintText: "msg_search_destination".tr);
                      }))
            ])));
  }

  /// Section Widget
  Widget _buildAvailPremiumFeatures(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(bottom: 99.v),
            padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v),
            decoration: AppDecoration.fillOrangeA,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1.v),
                  Opacity(
                      opacity: 0.6,
                      child: SizedBox(
                          width: 298.h,
                          child: Text("msg_avail_premium_features".tr,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium)))
                ])));
  }

  /// Section Widget
  Widget _buildNearbyParkingArea(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: Padding(
            padding: EdgeInsets.only(bottom: 161.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 40.h),
                      child: Text("msg_nearby_parking_area".tr,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleMedium)),
                  SizedBox(height: 18.v),
                  SizedBox(
                      height: 220.v,
                      child: Consumer<HomeProvider>(
                          builder: (context, provider, child) {
                        return ListView.separated(
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 11.h);
                            },
                            itemCount:
                                provider.homeModelObj.homeItemList.length,
                            itemBuilder: (context, index) {
                              HomeItemModel model =
                                  provider.homeModelObj.homeItemList[index];
                              return HomeItemWidget(model,
                                  onTapImgParkingApp: () {
                                onTapImgParkingApp(context);
                              });
                            });
                      }))
                ])));
  }

  /// Navigates to the bookNowScreen when the action is triggered.
  onTapImgParkingApp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.bookNowScreen,
    );
  }
}
