import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget image = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        'images/ba.jpg',
        height: 100,
        width: 100,
        fit: BoxFit.cover,
      ),
    );
    List<Widget> list = [
      image,
      image,
      image,
      image,
      image,
    ];

    return MaterialApp(
      title: 'My Test App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Test App'),
        ),
        body: Center(
          child: Wrap(
            children: list,
          ),
        ),
      ),
    );
  }
}
