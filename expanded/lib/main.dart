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
          title: const Text('Expanded Widget'),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  height: 200,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.orange,
                  height: 200,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  height: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
