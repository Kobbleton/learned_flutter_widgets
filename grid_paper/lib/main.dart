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
          title: const Text('Grid Paper'),
        ),
        body: const Center(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: GridPaper(
              color: Colors.blue,
              divisions: 1,
              interval: 200,
              subdivisions: 8,
            ),
          ),
        ),
      ),
    );
  }
}
