import 'package:flutter/material.dart';
import 'package:rest_api/data/app_exceptions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        throw InternetException('No Internet');
      }),
    );
  }
}
