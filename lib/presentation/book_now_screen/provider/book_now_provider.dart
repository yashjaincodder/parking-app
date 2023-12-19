import 'package:flutter/material.dart';
import 'package:yash_s_application1/core/app_export.dart';
import 'package:yash_s_application1/presentation/book_now_screen/models/book_now_model.dart';

/// A provider class for the BookNowScreen.
///
/// This provider manages the state of the BookNowScreen, including the
/// current bookNowModelObj
class BookNowProvider extends ChangeNotifier {
  BookNowModel bookNowModelObj = BookNowModel();

  @override
  void dispose() {
    super.dispose();
  }
}
