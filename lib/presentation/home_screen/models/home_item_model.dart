import '../../../core/app_export.dart';

/// This class is used in the [home_item_widget] screen.
class HomeItemModel {
  HomeItemModel({
    this.parkingApp,
    this.id,
  }) {
    parkingApp = parkingApp ?? ImageConstant.imgParkingApp5;
    id = id ?? "";
  }

  String? parkingApp;

  String? id;
}
