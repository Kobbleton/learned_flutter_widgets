import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          child: ChoiceChip(
            avatar: const Icon(Icons.accessibility_new),
            label: const Text('Choice Chip'),
            selected: _isSelected,
            onSelected: (newBoolValue) {
              setState(() {
                _isSelected = newBoolValue;
              });
            },
          ),
        ),
      ),
    );
  }
}
