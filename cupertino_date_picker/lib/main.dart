import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    // theme: ThemeData.dark(),
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
  DateTime dateTime = DateTime(3000, 2, 1, 10, 20);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoButton(
        child: Text('${dateTime.month}-${dateTime.day}-${dateTime.year}'),
        onPressed: () {
          showCupertinoModalPopup(
            context: context,
            builder: (BuildContext context) => SizedBox(
              height: 250,
              child: CupertinoDatePicker(
                backgroundColor: Colors.white,
                initialDateTime: dateTime,
                onDateTimeChanged: (DateTime newTime) {
                  setState(() {
                    dateTime = newTime;
                  });
                },
                use24hFormat: true,
                mode: CupertinoDatePickerMode.dateAndTime,
              ),
            ),
          );
        },
      ),
    ));
  }
}
