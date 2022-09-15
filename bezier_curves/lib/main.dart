import 'package:bezier_curves/custom_clippers.dart';
import 'package:flutter/material.dart';

import 'clip_shadow_path.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Stack(
          children: [
            ClipShadowPath(
              shadow: const BoxShadow(
                color: Colors.black,
                offset: Offset(4, 4),
                blurRadius: 4,
                spreadRadius: 8,
              ),
              clipper: BigClipper(),
              child: Container(
                color: Colors.orangeAccent,
              ),
            ),
            ClipShadowPath(
              shadow: const BoxShadow(
                color: Colors.black,
                offset: Offset(4, 4),
                blurRadius: 4,
                spreadRadius: 8,
              ),
              clipper: SmallClipper(),
              child: Container(
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
