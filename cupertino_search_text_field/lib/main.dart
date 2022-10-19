import 'package:flutter/cupertino.dart';
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
  final TextEditingController _textEditingController = TextEditingController(
    text: 'Cupertino Search',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF102436),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C3E5D),
        title: const Text('Cupertino Search Text Field'),
      ),
      body: Center(
        child: Container(
          color: CupertinoColors.systemOrange,
          padding: const EdgeInsets.all(10),
          child: Center(
            child: CupertinoSearchTextField(
              controller: _textEditingController,
            ),
          ),
        ),
      ),
    );
  }
}
