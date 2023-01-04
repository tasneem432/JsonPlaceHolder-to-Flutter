import 'package:flutter/material.dart';

class Album extends StatelessWidget {
  const Album({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("This is Album page",style: TextStyle(
            fontSize: 40
        ),),
      ),
    );
  }
}
