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
          title: const Text('Fitted Box'),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 150,
            color: Colors.red,
            padding: const EdgeInsets.all(10.0),

            //wrap text widget with Fitted Box to ensure that all text is visible without overflow
            child: const FittedBox(
              child: Text(
                'FITTED BOX',
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
