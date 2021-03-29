import 'package:flutter/material.dart';

import 'package:fb_story_animation/models/user_model.dart';

class CardStorie extends StatelessWidget {
  final User user;
  final bool isCurrentUser;

  const CardStorie({this.user, this.isCurrentUser = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 3.0,
        vertical: 10.0,
      ),
      padding: const EdgeInsets.all(1.0),
      width: 105.0,
      decoration: (isCurrentUser)
          ? BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0x25333333),
                  blurRadius: 2.0,
                  offset: Offset(1.0, 1.0),
                ),
              ],
              borderRadius: BorderRadius.circular(10.0),
            )
          : null,
      child: (!isCurrentUser)
          ? ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Stack(
                children: [
                  Image.network(
                    user.storiePicUrl,
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  ProfileImageStorie(
                    profileImageUrl: user.profilePicUrl,
                  ),
                  UserNameStorie(
                    userName: user.name,
                  ),
                ],
              ),
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Stack(
                children: [
                  Image.network(
                    user.profilePicUrl,
                    fit: BoxFit.cover,
                    height: 100.0,
                    width: double.infinity,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 70.0,
                      color: ThemeData().scaffoldBackgroundColor,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.only(
                            top: 15.0,
                          ),
                          width: 60.0,
                          child: Text(
                            'Create a story',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: ThemeData().textTheme.subtitle1.color,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    top: 25.0,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        padding: EdgeInsets.all(2.5),
                        decoration: BoxDecoration(
                          color: ThemeData().scaffoldBackgroundColor,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
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
                              size: 25.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

class UserNameStorie extends StatelessWidget {
  final String userName;

  UserNameStorie({@required this.userName});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 8.0,
      left: 5.0,
      child: Container(
        width: 90.0,
        child: Text(
          this.userName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}

class ProfileImageStorie extends StatelessWidget {
  final String profileImageUrl;

  ProfileImageStorie({@required this.profileImageUrl});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 8.0,
      left: 5.0,
      child: Container(
        width: 40.0,
        height: 40.0,
        padding: EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(
            50.0,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: Image.network(
            this.profileImageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
