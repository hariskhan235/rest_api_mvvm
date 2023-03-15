import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api/data/app_exceptions.dart';
import 'package:rest_api/res/components/internet_exception_widget.dart';
import 'package:rest_api/res/components/round_button.dart';
import 'package:rest_api/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    //return InternetExceptionWidget();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Enter email'.tr),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // throw InternetException('No Internet');
        Utils.showToast('message');
      }),
      body: Column(
        children: [
          RoundButton(
            title: 'Login',
            onPress: () {},
            width: 200,
          ),
          RoundButton(
            title: 'Login',
            onPress: () {},
            width: 200,
          ),
        ],
      ),
    );
  }
}
