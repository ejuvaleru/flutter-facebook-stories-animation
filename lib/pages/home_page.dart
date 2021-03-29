import 'package:flutter/material.dart';

import 'package:fb_story_animation/models/user_model.dart';
import 'package:fb_story_animation/widgets/card_storie.dart';
import 'package:fb_story_animation/shared/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController;
  double _scrollPosition = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
    print(_scrollPosition);
  }

  @override
  void initState() {
    _scrollController = new ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook Stories'),
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        height: 190.0,
        child: Stack(
          children: [
            ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: usuarios.length,
              itemBuilder: (_, index) {
                if (index == 0) return CardStorie(user: usuarios[index], isCurrentUser: true);
                return CardStorie(
                  user: usuarios[index],
                );
              },
            ),
            AnimatedPositioned(
              left: 0,
              bottom: (_scrollPosition < kMaxControllerPosition + 5) ? 65 : 70,
              duration: Duration(milliseconds: 100),
              child: AnimatedOpacity(
                duration: Duration(milliseconds: kAnimationDuration),
                opacity: (_scrollPosition < kMaxControllerPosition) ? 0 : 1,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: kAnimationDuration),
                  width: (_scrollPosition > kMaxControllerPosition + 2)
                      ? 50.0
                      : 30,
                  height: (_scrollPosition > kMaxControllerPosition + 2)
                      ? 50.0
                      : 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  padding: EdgeInsets.all(5.0),
                  child: ImageProfileCircle(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageProfileCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage:
              NetworkImage(usuarios[0].profilePicUrl),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 15.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
