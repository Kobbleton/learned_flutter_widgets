import 'package:flutter/cupertino.dart';

void main() {
  runApp(const CupertinoApp(
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
  final TextEditingController _textEditingController =
      TextEditingController(text: 'Text Field');
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemOrange,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color(0xFF1C3E5D),
        middle: Text(
          'Cupertino Text Field',
          style: TextStyle(color: CupertinoColors.white),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: CupertinoTextField(
            controller: _textEditingController,
          ),
        ),
      ),
    );
  }
}
