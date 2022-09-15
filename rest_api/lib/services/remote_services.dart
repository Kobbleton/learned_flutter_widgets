import 'package:rest_api/models/post.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  //returns future of list with posts
  Future<List<Post>?> getPosts() async {
    //create client to not open port again and again
    var client = http.Client();

    //parse URL
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');

    //call get request to the API
    var response = await client.get(uri);

    //check response for the code
    if (response.statusCode == 200) {
      //200 - successfull code response
      //get the body of the response
      var json = response.body;
      //this json will pass to the model in post.dart
      //this method comes from the generated model inside post.dart
      return postFromJson(json);
      //it will give the list of posts
    } else {}
    return null;
  }
}
