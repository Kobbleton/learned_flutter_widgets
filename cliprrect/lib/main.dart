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
          title: const Text('ClipRRect'),
        ),
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              'images/Small.jpg',
              width: 350,
            ),
          ),
        ),
      ),
    );
  }
}
