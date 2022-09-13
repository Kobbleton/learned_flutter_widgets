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
  bool? _ischecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Checkbox List Tile'),
        ),
        body: Center(
          child: CheckboxListTile(
            title: const Text('Checkbox List Tile'),
            value: _ischecked,
            onChanged: (bool? newValue) {
              setState(
                () {
                  _ischecked = newValue;
                },
              );
            },
            //Color of active checkbox
            activeColor: Colors.orangeAccent,
            checkColor: Colors.white,
            //Position of checkbox
            controlAffinity: ListTileControlAffinity.leading,
            //color of the tile
            tileColor: Colors.blue[50],
            tristate: true,
            subtitle: const Text('Subtitle'),
          ),
        ),
      ),
    );
  }
}
