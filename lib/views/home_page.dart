import 'package:flutter/material.dart';
import 'package:json_place_holder/views/bottom_nav_bar/album.dart';
import 'package:json_place_holder/views/bottom_nav_bar/comment.dart';
import 'package:json_place_holder/views/bottom_nav_bar/posts.dart';

class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   int _currentIndex = 0;

   final _pages = [
     Posts(),
     Comment(),
     Album(),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.post_add), label: "Post"),
          BottomNavigationBarItem(icon: Icon(Icons.comment), label: "Comment"),
          BottomNavigationBarItem(icon: Icon(Icons.album), label: "Album"),
        ],
        onTap: (int index){
          _currentIndex = index;
          setState(() {

          });
        },

      ),
    );
  }
}
