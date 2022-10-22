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
    TextStyle titles = const TextStyle(
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      backgroundColor: const Color(0XFF102436),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C3E5D),
        title: const Text('Data Table'),
      ),
      body: Center(
        child: DataTable(
          columns: [
            DataColumn(
              label: Text(
                'Name',
                style: titles,
              ),
            ),
            DataColumn(
              label: Text(
                'Age',
                style: titles,
              ),
            ),
            DataColumn(
              label: Text(
                'Color',
                style: titles,
              ),
            ),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text('Max')),
              DataCell(Text('21')),
              DataCell(Text('Red'))
            ]),
            DataRow(cells: [
              DataCell(Text('Jane')),
              DataCell(Text('25')),
              DataCell(Text('Blue'))
            ]),
            DataRow(cells: [
              DataCell(Text('Will')),
              DataCell(Text('27')),
              DataCell(Text('Yellow'))
            ])
          ],
        ),
      ),
    );
  }
}
