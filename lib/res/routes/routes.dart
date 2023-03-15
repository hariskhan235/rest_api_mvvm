import 'package:get/get.dart';
import 'package:rest_api/res/routes/routes_name.dart';
import 'package:rest_api/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteNames.splashScreen,
          page: () => const SplashScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.downToUp,
        )
      ];
}