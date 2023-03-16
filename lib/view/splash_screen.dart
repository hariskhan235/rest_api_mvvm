import 'package:flutter/material.dart';
import 'package:rest_api/view_model/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices services = SplashServices();

  @override
  void initState() {
    super.initState();
    services.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    //return InternetExceptionWidget();
    return const Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Text(
          'Welcome Back',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
