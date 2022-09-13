import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

//Sliver App Bar is a nice effect of AppBar dissapearing on scroll

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //CustomScrollView is a widget of srollable space
        body: CustomScrollView(
          //Here you put children
          slivers: [
            //SliverAppBar is a widget of floating AppBar
            const SliverAppBar(
              //pinned: true AppBar will stay but flexibleSpace will dissapear
              pinned: false,
              //floating is the option when you scroll up the AppBar appears instantly
              floating: true,
              //snap: true will expand the whole flexibleSpace on scroll up
              snap: true,
              expandedHeight: 150.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Mapp'),
                centerTitle: true,
              ),
              title: Text('Flutter'),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Text(
                    "SLIVER",
                    style: TextStyle(fontSize: 600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
