import 'package:flutter/material.dart';
import 'package:json_place_holder/helpers/comment_helper.dart';

import '../../models/comment_model.dart';

class Comment extends StatefulWidget {
  const Comment({Key? key}) : super(key: key);

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {

  List<CommentModel>? comments;
  bool isLoaded = false;


  getData() async {
    comments = await CommentHelper().getComment();
    setState(() {
      isLoaded = true;
    });
  }



  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comment Api"),
      ),
      body:ListView.builder(
        itemCount: comments?.length??0,
          itemBuilder: (context, index){
              return Card(
                elevation: 7,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(comments![index].name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                      Text(comments![index].email,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(comments![index].body,style: TextStyle(
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
