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
          title: const Text('Flexible Widget'),
        ),
        body: Center(
          child: Column(
            children: [
              Flexible(
                //FlexFit.tight = Expanded Widget
                //The child is forced to fill the available space.
                //FlexFit.loose = Flex Widget
                /// The child can be at most as large as the available space (but is
                /// allowed to be smaller).
                fit: FlexFit.tight,
                flex: 2,
                child: Container(
                  height: 50,
                  color: Colors.blue,
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: Container(
                  height: 50,
                  color: Colors.orange,
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: Container(
                  height: 50,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
