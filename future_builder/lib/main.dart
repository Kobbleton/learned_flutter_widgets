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

Future<String> getData() async {
  await Future.delayed(const Duration(seconds: 1));
  // throw 'An error occured';
  return 'It Works';
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Future Builder'),
        ),
        body: Center(
          child: FutureBuilder(
              future: getData(),
              builder: ((context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator.adaptive();
                }
                if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                } else {
                  return Column(mainAxisSize: MainAxisSize.min, children: [
                    Text(
                      snapshot.data.toString(),
                    ),
                    ElevatedButton(
                      onPressed: (() {
                        setState(() {});
                      }),
                      child: const Text('Refresh'),
                    )
                  ]);
                }
              })),
        ),
      ),
    );
  }
}
