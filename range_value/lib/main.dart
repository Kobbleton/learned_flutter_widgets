import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  RangeValues values = const RangeValues(0.1, 0.5);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Range Value',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Range Value'),
        ),
        body: Center(
          child: RangeSlider(
            values: values,
            divisions: 8,
            labels: labels,
            onChanged: (newValues) {
              setState(() {
                values = newValues;
              });
            },
          ),
        ),
      ),
    );
  }
}
