import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TimeOfDay? time = const TimeOfDay(hour: 12, minute: 12);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Time Picker',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Time Picker'),
        ),
        body: Center(
          child: Text(
            '${time!.hour.toString()} : ${time!.minute.toString()}',
            style: const TextStyle(fontSize: 60),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.access_time_outlined),
          onPressed: () async {
            TimeOfDay? newTime = await showTimePicker(
              context: context,
              initialTime: time!,
            );
            if (newTime != null) {
              setState(() {
                time = newTime;
              });
            }
          },
        ),
      ),
    );
  }
}
