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
    TableRow tableRow = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Cell 1'),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Cell 2'),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Cell 3'),
      ),
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: Center(
          child: Table(
            border: TableBorder.all(),
            defaultColumnWidth: const FixedColumnWidth(120),
            children: <TableRow>[
              tableRow,
              tableRow,
              tableRow,
              tableRow,
              tableRow,
            ],
          ),
        ),
      ),
    );
  }
}
