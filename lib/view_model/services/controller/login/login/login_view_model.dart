import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api/data/repository/login_repo/login_repo.dart';
import 'package:rest_api/models/login/user_model.dart';
import 'package:rest_api/res/routes/routes_name.dart';
import 'package:rest_api/utils/utils.dart';
import 'package:rest_api/view/home/home_view.dart';
import 'package:rest_api/view_model/services/controller/user_preferences_view_model.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepository();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  RxBool loading = false.obs;
  UserPreferences userPreferences = UserPreferences();

  void loginApi(BuildContext context) {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text,
    };
    _api.postApi(data).then((value) {
      loading.value = false;
      userPreferences.saveUser(UserModel.fromJson(value)).then((value) {
        Get.toNamed(RouteNames.homeView);
      }).onError((error, stackTrace) {});
      Utils.showToast('Login Successful');
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print(error.toString());
      }
      loading.value = false;
      Utils.snackBar(context, 'Error', error.toString());
    });
  }
}
