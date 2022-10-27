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
  String? _currentText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF102436),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C3E5D),
        title: const Text('Cupertino Segmented Control'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            CupertinoSegmentedControl(
              children: {
                'Field 1': Container(
                  color: _currentText == 'Field 1'
                      ? Colors.orangeAccent[100]
                      : Colors.white,
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  child: const Text('Field 1'),
                ),
                'Field 2': Container(
                  color: _currentText == 'Field 2'
                      ? Colors.orangeAccent[100]
                      : Colors.white,
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  child: const Text('Field 2'),
                ),
                'Field 3': Container(
                  color: _currentText == 'Field 3'
                      ? Colors.orangeAccent[100]
                      : Colors.white,
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  child: const Text('Field 3'),
                ),
              },
              onValueChanged: (value) {
                setState(() {
                  _currentText = value;
                });
              },
            ),
            const SizedBox(
              height: 50,
            ),
            _currentText != null
                ? Text(_currentText!, style: const TextStyle(fontSize: 50))
                : Container()
          ],
        ),
      ),
    );
  }
}
