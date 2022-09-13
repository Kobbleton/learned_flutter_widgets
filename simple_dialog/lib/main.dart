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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Dialog'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: (() {
                showDialog(
                  context: context,
                  builder: ((context) => SimpleDialog(
                        title: const Text('Simple Dialog Demo'),
                        contentPadding: const EdgeInsets.all(20.0),
                        children: [
                          const Text('More Information'),
                          TextButton(
                              onPressed: (() {
                                Navigator.of(context).pop();
                              }),
                              child: const Text('Close'))
                        ],
                      )),
                );
              }),
              child: const Text('Show Dialog')),
        ),
      ),
    );
  }
}
