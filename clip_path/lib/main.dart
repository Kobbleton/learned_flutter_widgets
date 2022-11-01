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
          title: const Text('Clip Path'),
        ),
        body: ClipPath(
          clipper: MyClipper(),
          child: Container(
            width: double.infinity,
            height: 300,
            color: const Color(0xFF142B46),
          ),
        ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height)
      ..quadraticBezierTo(
        size.width / 4,
        size.height - 40,
        size.width / 2,
        size.height - 20,
      )
      ..quadraticBezierTo(
        3 / 4 * size.width,
        size.height,
        size.width,
        size.height - 30,
      )
      ..lineTo(size.width, 0);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
