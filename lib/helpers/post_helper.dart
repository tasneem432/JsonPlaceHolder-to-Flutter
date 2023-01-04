import 'package:http/http.dart' as http;
import 'package:json_place_holder/models/post_model.dart';





class PostHelper{

  Future<List<PostModel>?> getPosts() async {
    var response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts")
    );
    if(response.statusCode ==200){
      var json = response.body;
      return postModelFromJson(json);
    }


  }




}


