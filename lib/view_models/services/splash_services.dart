import 'dart:async';
import 'dart:developer';

import 'package:flutter_starter_project/res/routes/routes_name.dart';
import 'package:flutter_starter_project/view_models/user_preferences/user_preferences.dart';
import 'package:get/get.dart';

class SplashServices {
  UserPreferences userPreferences = UserPreferences();

  void isLoggedIn() {
    userPreferences.getUser().then(
      (value) {
        log("User token is: ${value.token}");
        Timer(const Duration(seconds: 3), () {
          if (value.token.toString() != "null") {
            Get.toNamed(RouteName.homeScreen);
          } else {
            Get.toNamed(RouteName.loginScreen);
          }
        });
      },
    );
  }
}
