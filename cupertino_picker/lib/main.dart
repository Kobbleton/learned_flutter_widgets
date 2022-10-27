import 'package:flutter/cupertino.dart';
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
  int _selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFF102436),
        appBar: AppBar(
          backgroundColor: const Color(0xFF1C3E5D),
          title: const Text('Cupertino Picker'),
        ),
        body: SafeArea(
            child: Center(
          child: CupertinoButton.filled(
              onPressed: () => showCupertinoModalPopup(
                    context: context,
                    builder: (_) => SizedBox(
                      width: double.infinity,
                      height: 250,
                      child: CupertinoPicker(
                        backgroundColor: Colors.white,
                        itemExtent: 30,
                        scrollController: FixedExtentScrollController(
                          initialItem: 1,
                        ),
                        children: const [
                          Text('0'),
                          Text('1'),
                          Text('2'),
                        ],
                        onSelectedItemChanged: (value) {
                          setState(() {
                            _selectedValue = value;
                          });
                        },
                      ),
                    ),
                  ),
              child: Text('Value = $_selectedValue')),
        )));
  }
}
