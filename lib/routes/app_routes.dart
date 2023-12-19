import 'package:flutter/material.dart';
import 'package:yash_s_application1/presentation/home_screen/home_screen.dart';
import 'package:yash_s_application1/presentation/book_now_screen/book_now_screen.dart';
import 'package:yash_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String bookNowScreen = '/book_now_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        homeScreen: HomeScreen.builder,
        bookNowScreen: BookNowScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: HomeScreen.builder
      };
}
