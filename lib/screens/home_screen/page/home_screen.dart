import 'package:flutter/material.dart';
import 'package:stepper_example_ui/utils/textstyle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'HomePage',
          style: mainText,
        ),
      ),
    );
  }
}
