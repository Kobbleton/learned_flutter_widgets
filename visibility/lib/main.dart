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
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Visibility'),
          actions: [
            TextButton(
              onPressed: (() {
                setState(() {
                  _isVisible = !_isVisible;
                });
              }),
              child: const Text(
                'Switch',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'images/bpb.png',
                height: 100,
              ),
              Visibility(
                visible: _isVisible,
                child: Image.asset(
                  'images/ba.jpg',
                  height: 300,
                ),
              ),
              Image.asset(
                'images/bpb.png',
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
