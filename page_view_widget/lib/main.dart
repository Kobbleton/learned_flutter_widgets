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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Test App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Page View Widget'),
        ),
        body: PageView(children: [
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                "Page 1",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.orange,
            child: const Center(
              child: Text(
                "Page 2",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.red,
            child: const Center(
              child: Text(
                "Page 3",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
