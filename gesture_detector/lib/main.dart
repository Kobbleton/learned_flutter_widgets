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
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _counter += 1;
              });
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              child: Center(
                child: Text(
                  _counter.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
