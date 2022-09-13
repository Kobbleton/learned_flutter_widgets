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
      title: 'My Test App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Modal Bottom Sheet'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: (() {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 400,
                      child: Center(
                        child: ElevatedButton(
                            onPressed: (() {
                              Navigator.pop(context);
                            }),
                            child: const Text('Close')),
                      ),
                    );
                  });
            }),
            child: const Text('Modal Bottom Sheet'),
          ),
        ),
      ),
    );
  }
}
