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
  DateTime _dateTime = DateTime(2022);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Date Picker'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${_dateTime.day}-${_dateTime.month}-${_dateTime.year}',
                style: const TextStyle(fontSize: 40),
              ),
              ElevatedButton(
                onPressed: () async {
                  DateTime? newDate = await showDatePicker(
                    context: context,
                    initialDate: _dateTime,
                    firstDate: DateTime(1800),
                    lastDate: DateTime(3000),
                  );
                  if (newDate != null) {
                    setState(() {
                      _dateTime = newDate;
                    });
                  }
                },
                child: const Text('Get Date'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
