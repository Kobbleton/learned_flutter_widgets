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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF102436),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C3E5D),
        title: const Text('Container'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(32.0),
          color: Colors.orangeAccent,
          alignment: Alignment.center,
          constraints: const BoxConstraints.expand(height: 200),
          transform: Matrix4.rotationZ(0.2),
          child: const Text('Container'),
        ),
      ),
    );
  }
}
