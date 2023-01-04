import 'package:http/http.dart' as http;
import '../models/comment_model.dart';




class CommentHelper{

  Future<List<CommentModel>?> getComment() async {
    try{

      var response = await http.get(
          Uri.parse("https://jsonplaceholder.typicode.com/comments")
      );
      if(response.statusCode ==200){
        var json = response.body;
        return commentModelFromJson(json);
      }


    }catch(e) {
      print(e);
    }


  }




}


