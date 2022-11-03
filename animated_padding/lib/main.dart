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
  double padValue = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFF102436),
        appBar: AppBar(
          backgroundColor: const Color(0xFF1C3E5D),
          title: const Text('Animated Padding'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                ),
                onPressed: () {
                  setState(
                    () => padValue = padValue == 0.0 ? 100.0 : 0.0,
                  );
                },
                child: const Text('Change Padding'),
              ),
              Text('Padding = $padValue'),
              AnimatedPadding(
                padding: EdgeInsets.all(padValue),
                duration: const Duration(seconds: 2),
                curve: Curves.easeInOut,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                  color: Colors.orangeAccent,
                ),
              )
            ],
          ),
        ));
  }
}
