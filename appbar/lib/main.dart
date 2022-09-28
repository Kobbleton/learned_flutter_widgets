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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF102436),
      appBar: AppBar(
        title: const Text('AppBar'),
        //put text in the center
        centerTitle: true,
        //actions of AppBar
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
        // backgroundColor: const Color(0xFF1C3E5D),
        backgroundColor: Colors.orangeAccent,
        //leading is first action icon in the AppBar
        leading: IconButton(
          onPressed: () {},
          icon: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        shape: const RoundedRectangleBorder(
          //shape of the AppBar
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: const Center(
        child: Text(''),
      ),
    );
  }
}
