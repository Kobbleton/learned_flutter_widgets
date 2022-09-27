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
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: Center(
            child: AnimatedContainer(
              width: isSelected ? 200 : 100,
              height: isSelected ? 100 : 200,
              color: isSelected ? Colors.blueGrey : Colors.white,
              alignment: isSelected
                  ? Alignment.center
                  : AlignmentDirectional.topCenter,
              curve: Curves.fastOutSlowIn,
              duration: const Duration(
                seconds: 2,
              ),
              child: const FlutterLogo(
                size: 75,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
