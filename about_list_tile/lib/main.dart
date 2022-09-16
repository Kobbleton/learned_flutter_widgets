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
    return const Center(
      child: AboutListTile(
        icon: Icon(Icons.info),
        applicationIcon: FlutterLogo(),
        applicationLegalese: 'Legalise',
        applicationName: 'About List Tile App',
        applicationVersion: '1.0.0',
        aboutBoxChildren: [
          Text('This is a text created by Kobbleton'),
        ],
      ),
    );
  }
}
