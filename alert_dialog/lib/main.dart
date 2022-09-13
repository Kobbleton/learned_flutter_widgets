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
          title: const Text('Alert Dialog'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: ((context) => AlertDialog(
                        actions: [
                          TextButton(
                              onPressed: (() {
                                Navigator.of(context).pop();
                              }),
                              child: const Text('Close'))
                        ],
                        title: const Text('Alert Dialog'),
                        contentPadding: const EdgeInsets.all(20),
                        content: const Text('This is Alert Dialog'),
                      )),
                );
              },
              child: const Text('Show Allert')),
        ),
      ),
    );
  }
}
