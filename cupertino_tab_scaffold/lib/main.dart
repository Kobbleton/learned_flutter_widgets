import 'package:flutter/cupertino.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFF102436),
        appBar: AppBar(
          backgroundColor: const Color(0xFF1C3E5D),
          title: const Text('Cupertino Tab Scaffold'),
        ),
        body: CupertinoTabScaffold(
          tabBuilder: (context, index) => CupertinoTabView(
            builder: (context) => Center(
              child: Icon(
                index == 0 ? CupertinoIcons.home : CupertinoIcons.settings,
                size: 80,
              ),
            ),
          ),
          tabBar: CupertinoTabBar(items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.settings,
                ),
                label: 'Settings'),
          ]),
        ));
  }
}
