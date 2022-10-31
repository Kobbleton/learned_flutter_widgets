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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF102436),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C3E5D),
        title: const Text('Default Text Style'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Default Text Style'),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 36,
                color: Colors.blue,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Default Text Style'),
                    Text(
                      'Default Text Style',
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      'Default Text Style',
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
