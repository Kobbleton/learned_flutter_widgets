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
  DateTimeRange selectedDates = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFF102436),
        appBar: AppBar(
          backgroundColor: const Color(0xFF1C3E5D),
          title: const Text('Date Range Picker'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "${selectedDates.duration.inDays}",
              ),
              ElevatedButton(
                child: const Text("Choose Dates"),
                onPressed: () async {
                  final DateTimeRange? dateTimeRange =
                      await showDateRangePicker(
                    context: context,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(3000),
                  );
                  if (dateTimeRange != null) {
                    setState(() {
                      selectedDates = dateTimeRange;
                    });
                  }
                },
              ),
            ],
          ),
        ));
  }
}
