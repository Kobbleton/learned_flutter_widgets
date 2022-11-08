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
  double size = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF102436),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C3E5D),
        title: const Text('Animated Size'),
      ),
      body: Center(
          child: GestureDetector(
        onTap: () {
          setState(() {
            size = size == 300 ? 100 : 300;
          });
        },
        child: Container(
          color: Colors.white,
          child: AnimatedSize(
            curve: Curves.easeIn,
            duration: const Duration(seconds: 1),
            child: FlutterLogo(size: size),
          ),
        ),
      )),
    );
  }
}
