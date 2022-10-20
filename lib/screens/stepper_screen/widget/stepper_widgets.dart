import 'package:flutter/material.dart';
import 'package:stepper_example_ui/models/app_routes.dart';
import 'package:stepper_example_ui/utils/string.dart';
import 'package:stepper_example_ui/utils/textstyle.dart';

import '../../../utils/colors.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.light(primary: mainColor),
        ),
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Stepper(
                  type: stepperType,
                  physics: const ScrollPhysics(),
                  currentStep: _currentStep,
                  onStepTapped: (step) => tapped(step),
                  onStepContinue: continued,
                  onStepCancel: cancel,
                  steps: <Step>[
                    Step(
                      title: Text(
                        signUp,
                        style: mainText,
                      ),
                      content: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: fullName,
                              prefixIcon: const Icon(Icons.account_box_sharp),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: emailId,
                              prefixIcon: const Icon(Icons.email_outlined),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: password,
                              prefixIcon: const Icon(Icons.lock_outline),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: confrimPassword,
                              prefixIcon: const Icon(Icons.lock_outline),
                            ),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 0
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: Text(
                        logIn,
                        style: mainText,
                      ),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: userName,
                              prefixIcon: const Icon(Icons.account_box_sharp),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: password,
                              prefixIcon: const Icon(Icons.lock_outline),
                            ),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 1
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: Text(
                        home,
                        style: mainText,
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 2
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep <= 2
        ? (_currentStep == 2)
            ? Navigator.of(context).pushNamed(AppRoutes().homeScreen)
            : setState(() => _currentStep += 1)
        : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
