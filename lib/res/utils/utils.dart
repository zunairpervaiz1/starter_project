import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Utils {
  //change keyboard focus from one textfield to the next
  static void fieldFocusChange(BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).nextFocus();
  }

  //show snackbar in your application
  static showSnackBar(String title, String message) {
    Get.snackbar(
      title,
      message,
      animationDuration: const Duration(
        milliseconds: 500,
      ),
    );
  }
}
