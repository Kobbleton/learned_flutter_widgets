import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int? _sliding = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF102436),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C3E5D),
        title: const Text('CupertinoSlidingSegmentedControl'),
      ),
      body: Center(
        child: CupertinoSlidingSegmentedControl(
          children: const {
            0: Text('Text 0'),
            1: Text('Text 2'),
            2: Text('Text 2'),
          },
          groupValue: _sliding,
          onValueChanged: (int? newValue) {
            setState(() {
              _sliding = newValue;
            });
          },
        ),
      ),
    );
  }
}
