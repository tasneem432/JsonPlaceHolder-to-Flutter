import 'package:flutter/material.dart';

import '../../helpers/post_helper.dart';
import '../../models/post_model.dart';

class Posts extends StatefulWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {

  List<PostModel>? posts;
  bool isLoaded = false;

  getPostData() async{
    posts = await PostHelper().getPosts();
    setState(() {
      isLoaded = true;
    });
  }



  @override
  void initState() {
    getPostData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts Api"),
      ),
      body:ListView.builder(
        itemCount: posts?.length??0,
        itemBuilder: (context, index){
          return Card(
            elevation: 7,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(posts![index].title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  Text(posts![index].userId.toString(),
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(posts![index].body,style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
