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
            title: const Text('Spacer Widget'),
          ),
          body: Column(
            children: [
              Container(
                color: Colors.blue,
                height: 100,
              ),
              const Spacer(
                flex: 1,
              ),
              Container(
                color: Colors.orange,
                height: 100,
              ),
              // const Spacer(
              // flex: 1,
              // ),
              Container(
                color: Colors.red,
                height: 100,
              )
            ],
          )),
    );
  }
}
