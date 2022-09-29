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
        backgroundColor: const Color(0xFF1C3E5D),
        title: const Text('Banner Widget'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: ClipRRect(
              child: Banner(
            message: '25% off',
            location: BannerLocation.topEnd,
            color: Colors.red,
            child: Container(
              color: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                        'https://images.unsplash.com/photo-1585409677983-0f6c41ca9c3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80'),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Trip to Nepal',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orangeAccent,
                          ),
                          onPressed: () {},
                          child: const Text('Get now'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
        ),
      ),
    );
  }
}
