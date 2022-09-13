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
  String title = 'First Page';
  String firstPage = 'First Page';
  String secondPage = 'Second Page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Test App',
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: firstPage,
                  child: Text(firstPage),
                ),
                PopupMenuItem(
                  value: secondPage,
                  child: Text(secondPage),
                )
              ],
              onSelected: (String newValue) {
                setState(() {
                  title = newValue;
                });
              },
            )
          ],
        ),
        body: const Center(),
      ),
    );
  }
}
