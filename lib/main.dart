import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api/res/gets_localizations/languages.dart';
import 'package:rest_api/res/routes/routes.dart';
import 'package:rest_api/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Languages(),
      locale: const Locale('ur', 'PK'),
      fallbackLocale: const Locale('ur', 'PK'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
