import 'package:flutter/material.dart';
import 'package:flutter_starter_project/models/login_model/login_model.dart';
import 'package:flutter_starter_project/repositories/login_repository/login_repository.dart';
import 'package:flutter_starter_project/res/routes/routes_name.dart';
import 'package:flutter_starter_project/res/utils/utils.dart';
import 'package:flutter_starter_project/view_models/user_preferences/user_preferences.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  //creating object of UserPreferences class to store the session data
  UserPreferences userPreferences = UserPreferences();

  final _api = LoginRepository();

  //creating two controllers for email and password text fields
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //creating two focus nodes for managing the focus change on submit
  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  //to check if its loading the data
  var isLoading = false.obs;

  //calling loginAPI and passing the data from email and password controllers
  loginAPI() {
    isLoading(true);

    //storing the text controllers data into a map
    Map<String, dynamic> data = {"email": emailController.text, "password": passwordController.text};

    //hitting the api
    _api.loginApi(data).then((value) async {
      isLoading(false);
      //if the email or password is wrong
      if (value['error'] == "user not found") {
        Utils.showSnackBar("Error", value['error'].toString());
      } else {
        //if user logins successfully
        userPreferences.storeUser(LoginModel.fromJson(value)).then((value) {
          //removes all previous routes and goto Home Screen
          Get.offAllNamed(RouteName.homeScreen);
        }).onError(
          (error, stackTrace) {},
        );

        Utils.showSnackBar("Login", "Logged in successfully");
      }
    }).onError((error, stackTrace) {
      isLoading(false);
      Utils.showSnackBar("Error", error.toString());
    });
  }
}
