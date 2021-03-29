import 'package:flutter/material.dart';

import 'package:fb_story_animation/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Stories UI',
      home: HomePage(),
    );
  }
}