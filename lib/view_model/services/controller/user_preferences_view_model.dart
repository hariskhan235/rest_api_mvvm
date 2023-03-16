import 'package:get/get.dart';
import 'package:rest_api/models/login/user_model.dart';

import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences extends GetxController {
  Future<bool> saveUser(UserModel model) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('token', model.token);
    return true;
  }

  Future<UserModel> getUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? token = preferences.getString('token');
    return UserModel(token: token!);
  }

  Future<bool> logoutUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    preferences.clear();
    return true;
  }
}
