import 'package:flutter/material.dart';
import 'dart:ui';

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
        title: const Text('Backdrop Filter'),
      ),
      body: Center(
        child: Stack(
          children: [
            Text(
              '0' * 10000,
              style: const TextStyle(
                color: Colors.green,
              ),
            ),
            Center(
              child: ClipRect(
                  child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 4,
                  sigmaY: 4,
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 250,
                  child: const Text('Blur'),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
