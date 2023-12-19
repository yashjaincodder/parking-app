import '../models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yash_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(
    this.homeItemModelObj, {
    Key? key,
    this.onTapImgParkingApp,
  }) : super(
          key: key,
        );

  HomeItemModel homeItemModelObj;

  VoidCallback? onTapImgParkingApp;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 145.h,
      child: CustomImageView(
        imagePath: homeItemModelObj?.parkingApp,
        height: 218.v,
        width: 145.h,
        margin: EdgeInsets.only(top: 2.v),
        onTap: () {
          onTapImgParkingApp!.call();
        },
      ),
    );
  }
}
