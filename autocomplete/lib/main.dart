import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const List<String> listItems = ['apple', 'banana', 'melon'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF102436),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C3E5D),
        title: const Text('Autocomplete'),
      ),
      body: Column(
        children: [
          Center(
            child: Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text == '') {
                  return const Iterable<String>.empty();
                }
                return listItems.where((String item) {
                  return item.contains(textEditingValue.text.toLowerCase());
                });
              },
              onSelected: (String item) {
                print('The item was selected');
              },
            ),
          ),
        ],
      ),
    );
  }
}
