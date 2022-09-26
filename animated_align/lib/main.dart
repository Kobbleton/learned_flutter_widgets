import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      appBar: AppBar(title: const Text('Animated Align')),
      body: GestureDetector(
        onTap: (() {
          setState(() {
            isSelected = !isSelected;
          });
        }),
        child: Center(
          child: Container(
            width: double.infinity,
            height: 250.0,
            color: Colors.blueGrey,
            child: AnimatedAlign(
              alignment: isSelected ? Alignment.topRight : Alignment.bottomLeft,
              duration: const Duration(seconds: 1),
              child: const FlutterLogo(
                size: 50.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
