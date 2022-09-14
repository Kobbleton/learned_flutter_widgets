import 'package:flutter/material.dart';
import 'package:glassmorphism/this%20folder/glassmorphism.dart';

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
  bool isBlur = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Stack(
          children: [
            Image.network(
              'https://tinyurl.com/2p8zr2ze',
              fit: BoxFit.cover,
              height: double.infinity,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isBlur = !isBlur;
                  });
                },
                child: GlassMorphism(
                  blur: isBlur ? 20 : 0,
                  opacity: 0.2,
                  child: const SizedBox(
                    height: 210,
                    width: 320,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
