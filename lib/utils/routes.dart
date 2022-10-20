import 'package:flutter/cupertino.dart';
import 'package:stepper_example_ui/models/app_routes.dart';
import 'package:stepper_example_ui/screens/splash_screen/page/splash_screen.dart';

import '../screens/home_screen/page/home_screen.dart';
import '../screens/stepper_screen/page/stepper_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes().splashScreen: (context) => const SplashScreen(),
  AppRoutes().stepperScreen: (context) => const StepperScreen(),
  AppRoutes().homeScreen: (context) => const HomeScreen(),
};
