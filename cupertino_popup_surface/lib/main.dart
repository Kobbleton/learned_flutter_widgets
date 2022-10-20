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
    return CupertinoPageScaffold(
      backgroundColor: const Color(0XFF102436),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color(0xFF1C3E5D),
        middle: Text(
          'Cupertino Popup Surface',
          style: TextStyle(color: Colors.white),
        ),
      ),
      child: Center(
        child: CupertinoButton(
          child: const Text('Click me'),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext builder) {
                return CupertinoPopupSurface(
                  child: Container(
                    color: CupertinoColors.white,
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 400,
                    child: Center(
                      child: CupertinoButton(
                        child: const Text('Close'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
