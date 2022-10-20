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
  double _currentValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF102436),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C3E5D),
        title: const Text('Cupertino Slider'),
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                _currentValue.toString(),
              ),
              const SizedBox(
                height: 50,
              ),
              CupertinoSlider(
                value: _currentValue,
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (newValue) {
                  setState(() {
                    _currentValue = newValue;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
