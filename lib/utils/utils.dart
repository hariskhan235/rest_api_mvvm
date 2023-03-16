import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/route_manager.dart';
import 'package:rest_api/res/colors/app_colors.dart';

class Utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: AppColors.blackColor,
        textColor: Colors.amber);
  }

  static snackBar(BuildContext context, String title, String message) {
    Get.snackbar(title, message);
  }
}
