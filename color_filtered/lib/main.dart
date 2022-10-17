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
    return Scaffold(
      backgroundColor: const Color(0XFF102436),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C3E5D),
        title: const Text('Color Filter'),
      ),
      body: Center(
        child: ColorFiltered(
          colorFilter: const ColorFilter.mode(
            Colors.blueGrey,
            BlendMode.color,
          ),
          child: Image.network(
              'https://img.freepik.com/free-vector/bubbles-seamless-pattern-blue_1284-43368.jpg?w=1060&t=st=1666010868~exp=1666011468~hmac=224aca5552dc188759d26f3d61773d550d588024da54a63d9f1e608bbdc7ad6f'),
        ),
      ),
    );
  }
}
