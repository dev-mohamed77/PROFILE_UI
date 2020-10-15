import 'package:Flutter_UI/model/profile1/profile_model.dart';
import 'package:Flutter_UI/model/profile1/profile_provider.dart';
import 'package:flutter/material.dart';

class Profile1 extends StatefulWidget {
  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  Profile profile = ProfileProvider.getProfile();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.45,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage("assets/images/grass.jpg"),
                  fit: BoxFit.cover)),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text("PROFILE"),
            centerTitle: true,
            elevation: 0,
            leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            actions: [
              IconButton(icon: Icon(Icons.settings), onPressed: () {}),
            ],
          ),
          body: Stack(
            children: [
              CustomPaint(
                painter: ProfilePainter(),
                child: Container(),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.21,
                left: MediaQuery.of(context).size.width * 0.07,
                child: CircleAvatar(
                  // backgroundColor: Colors.red,
                  backgroundImage:
                      ExactAssetImage("assets/images/profile2.jpg"),
                  radius: 50,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.38,
                right: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        profile.user.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            profile.user.adress,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "ABOUT ME",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        profile.user.about,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            height: 1.4,
                            letterSpacing: 0.4),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 0,
                child: _profileData(context),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _profileData(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "FOLLOWER",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                profile.followers.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "FOLOWING",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                profile.following.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "FRINDS",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                profile.frinds.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfilePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();
    paint.color = Colors.white;
    path.lineTo(0, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.36);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.25);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
