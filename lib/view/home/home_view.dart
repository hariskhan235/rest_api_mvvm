import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api/res/routes/routes_name.dart';
import 'package:rest_api/view_model/services/controller/user_preferences_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  UserPreferences preferences = UserPreferences();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                preferences.logoutUser().then((value) {
                  Get.toNamed(RouteNames.loginView);
                });
              },
              icon: Icon(
                Icons.logout,
              ))
        ],
      ),
    );
  }
}
