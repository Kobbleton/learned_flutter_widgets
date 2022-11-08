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
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C3E5D),
        title: const Text('Animated Physical Model '),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedPhysicalModel(
            curve: Curves.fastOutSlowIn,
            shape: BoxShape.rectangle,
            elevation: _isFlat ? 0 : 6,
            color: Colors.white,
            shadowColor: Colors.black,
            duration: const Duration(milliseconds: 500),
            child: const SizedBox(
              height: 120,
              width: 120,
              child: Icon(
                Icons.android_outlined,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _isFlat = !_isFlat;
              });
            },
            child: const Text('Click'),
          )
        ],
      )),
    );
  }
}
