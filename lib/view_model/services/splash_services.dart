import 'dart:async';

import 'package:get/get.dart';
import 'package:rest_api/res/routes/routes_name.dart';
import 'package:rest_api/view_model/services/controller/user_preferences_view_model.dart';

class SplashServices {
  UserPreferences userPreferences = UserPreferences();
  void isLogin() {
    userPreferences.getUser().then((value) {
      if (value.token.isEmpty || value.token == 'null') {
        Timer(const Duration(seconds: 3), () {
          Get.toNamed(RouteNames.loginView);
        });
      } else {
        Timer(const Duration(seconds: 3), () {
          Get.toNamed(RouteNames.homeView);
        });
      }
    });
  }
}
