import 'package:flutter/material.dart';
import 'package:rest_api/views/home_page.dart';

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
      title: 'Rest API demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomePage(),
    );
  }
}

//STEP 1 create folders inside lib/ : models, services, views
//STEP 2 create home_page.dart inside views folder
//STEP 3 import material and create StateFull widget called HomePage
//STEP 4 return a scaffold with an AppBar
//STEP 5 link homepage to the main.dart
//STEP 6 use https://jsonplaceholder.typicode.com to generate fake API
//STEP 7 use https://app.quicktype.io to make a model for API call
//STEP 8 create the file post.dart in the models folder and paste created model from the quicktype
//STEP 9 add required keyword or make some of the arguments nullable
//STEP 10 in home_page.dart create list of posts " List<Post>? posts; " and " var isLoaded; "
//STEP 11 create as a body of Scaffold
//      ListView.builder(
       // itemBuilder: (context, index) {
       //  return Container(
       //     child: const Text('Hi'),
       //   );
       // },
       //),
//STEP 12 fetch actual data by creating method getData() and including it in @override initState
//STEP 13 create helper remote_services.dart under services folder
//STEP 14 create class RemoteService
//STEP 15 call the class RemoteService from the HomePage
//STEP 16 if posts != null call setState where isLoaded = true;
//STEP 17 use itemCount: posts?.length, inside listView.builder
//STEP 18 wrap listview inside the visibility widget that will make it visible only if posts are loaded
//STEP 19 
//STEP 20 
//STEP 21 
//STEP 22 
//STEP 23 
//STEP 24
