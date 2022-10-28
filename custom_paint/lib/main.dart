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
        title: const Text('Custom Paint'),
      ),
      body: Center(
        child: CustomPaint(
          painter: DemoPainter(),
          child: const Text(
            'This is Pac-Man',
            style: TextStyle(
              color: Colors.black,
              backgroundColor: Colors.white54,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint()..color = Colors.yellow;
    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(center.width, center.height),
            width: 250,
            height: 250),
        0.4,
        2 * 3.14 - 0.8,
        true,
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
