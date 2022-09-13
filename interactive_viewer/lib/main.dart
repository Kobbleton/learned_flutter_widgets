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
          title: const Text('Interactive Widget'),
        ),
        body: Center(
          child: InteractiveViewer(
            maxScale: 5,
            child: Image.asset('images/Small.jpg'),
          ),
        ),
      ),
    );
  }
}
