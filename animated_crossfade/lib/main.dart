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
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Crossfade',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animated Crossfade'),
          actions: [
            TextButton(
              onPressed: (() {
                setState(() {
                  _bool = !_bool;
                });
              }),
              child: const Text(
                'Switch',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        body: Center(
          //ClipRRect used for rounded corners
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: AnimatedCrossFade(
                firstChild: Image.asset(
                  'images/3.jpg',
                  width: 350,
                ),
                secondChild: Image.asset(
                  'images/4.jpg',
                  width: 350,
                ),
                crossFadeState: _bool
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(seconds: 1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
