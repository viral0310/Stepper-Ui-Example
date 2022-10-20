import 'package:flutter/material.dart';
import 'package:stepper_example_ui/models/app_routes.dart';
import 'package:stepper_example_ui/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes().splashScreen,
      routes: routes,
    );
  }
}
