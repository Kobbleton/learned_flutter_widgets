import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

//Sliver App Bar is a nice effect of AppBar dissapearing on scroll

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expansion Tile'),
        ),
        body: const ExpansionTile(
          title: Text('See More'),
          leading: Icon(Icons.info),
          backgroundColor: Colors.black12,
          children: [
            ListTile(title: Text('First')),
            ListTile(title: Text('Second')),
            ListTile(title: Text('Third')),
          ],
        ),
      ),
    );
  }
}
