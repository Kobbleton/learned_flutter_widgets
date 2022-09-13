import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Adaptive widgets'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Slider.adaptive(
                value: 1,
                onChanged: ((double newValue) {}),
              ),
              SwitchListTile.adaptive(
                title: const Text('Switch List Tile'),
                value: true,
                onChanged: (bool newValue) {},
              ),
              Switch.adaptive(
                value: true,
                onChanged: (bool newValue) {},
              ),
              Icon(Icons.adaptive.share),
              const CircularProgressIndicator.adaptive()
            ],
          ),
        ),
      ),
    );
  }
}
