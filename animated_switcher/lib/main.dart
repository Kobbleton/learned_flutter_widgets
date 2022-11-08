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
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFF102436),
        appBar: AppBar(
          backgroundColor: const Color(0xFF1C3E5D),
          title: const Text('Animated Switcher'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: Text(
                  '$_count',
                  style: const TextStyle(fontSize: 40),
                  key: ValueKey(_count),
                ),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
              ),
              ElevatedButton(
                child: const Text('Add'),
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
            ],
          ),
        ));
  }
}
