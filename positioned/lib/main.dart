import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Positioned Widget'),
        ),
        body: Center(
          child: Stack(
            children: [
              Positioned(
                left: 40,
                top: 40,
                child: Image.asset(
                  'images/ba.jpg',
                  width: 250,
                ),
              ),
              Positioned(
                left: 80,
                top: 80,
                child: Image.asset(
                  'images/ba.jpg',
                  width: 250,
                ),
              ),
              Positioned(
                left: 120,
                top: 120,
                child: Image.asset(
                  'images/ba.jpg',
                  width: 250,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
