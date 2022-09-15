import 'package:flutter/material.dart';
import 'package:rest_api/services/remote_services.dart';

import '../models/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list can be null
  List<Post>? posts;
  var isLoaded = false;

  //override initState to load the data every time the page is loading

  @override
  void initState() {
    super.initState();

    //fetch data from API
    getData();
  }

//method responsible for getting the data
//make it async
  getData() async {
    //get the list of posts and store it in variable
    posts = await RemoteService().getPosts();
    //check if posts is not null
    if (posts != null) {
      setState(() {
        //if its not null update UI
        isLoaded = true;
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      //wrap inside visibility widget
      body: Visibility(
        //make post visible only if the response is not null
        visible: isLoaded,
        //if not show loading indicator
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
          //count of list is dynamic based on posts list length
          //add ? because it can be null
          itemCount: posts?.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(16),
              //text will include dynamic info from response
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[300],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          posts![index].title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          //because body can be null need to specify alternative if it is, with ?? ' '
                          posts![index].body ?? ' ',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
