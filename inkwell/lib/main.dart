import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color boxColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Inkwell'),
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                boxColor = Colors.blue;
              });
            },
            onDoubleTap: () {
              setState(() {
                boxColor = Colors.red;
              });
            },
            onLongPress: () {
              setState(() {
                boxColor = Colors.green;
              });
            },
            child: Ink(
              height: 200,
              width: 200,
              color: boxColor,
              child: const Center(
                child: FlutterLogo(size: 150),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
