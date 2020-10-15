import 'package:flutter/material.dart';

class Profile3 extends StatefulWidget {
  @override
  _Profile3State createState() => _Profile3State();
}

class _Profile3State extends State<Profile3> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: ExactAssetImage("assets/images/background.jpeg"),
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text("PROFILE"),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
              ),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                ),
                onPressed: () {},
              )
            ],
          ),
          body: Stack(
            children: [
              _bodyContent(context),
              _profileImage(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget _bodyContent(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.09,
      right: 8,
      left: 8,
      bottom: 0,
      child: Container(
        color: Colors.white,
        child: ListView(),
      ),
    );
  }

  Widget _profileImage(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.04,
      left: MediaQuery.of(context).size.width / 2 - 50,
      child: CircleAvatar(
        backgroundImage: ExactAssetImage(
          "assets/images/profile2.jpg",
        ),
        radius: 47,
      ),
    );
  }
}
