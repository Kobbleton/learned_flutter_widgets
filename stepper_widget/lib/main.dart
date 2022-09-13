import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Test App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stepper Widget'),
        ),
        body: Center(
          child: Stepper(
            steps: const [
              Step(
                title: Text('Step 1'),
                content: Text('Information for step 1'),
              ),
              Step(
                title: Text('Step 2'),
                content: Text('Information for step 2'),
              ),
              Step(
                title: Text('Step 3'),
                content: Text('Information for step 3'),
              )
            ],
            onStepTapped: (int newIndex) {
              setState(() {
                _currentStep = newIndex;
              });
            },
            currentStep: _currentStep,
            onStepContinue: () {
              if (_currentStep != 2) {
                setState(() {
                  _currentStep += 1;
                });
              }
            },
            onStepCancel: () {
              if (_currentStep != 0) {
                setState(() {
                  _currentStep -= 1;
                });
              }
            },
          ),
        ),
      ),
    );
  }
}
