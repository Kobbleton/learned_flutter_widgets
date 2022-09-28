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
        title: const Text('Aspect Ratio'),
      ),
      body: Center(
        child: Container(
          color: Colors.orangeAccent,
          alignment: Alignment.center,
          width: double.infinity,
          height: 300,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(color: Colors.blueGrey),
          ),
        ),
      ),
    );
  }
}
