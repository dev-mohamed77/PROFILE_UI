import 'package:Flutter_UI/model/profile2/profile2_model.dart';
import 'package:Flutter_UI/model/profile2/profile2_provider.dart';
import 'package:flutter/material.dart';

class Profile2 extends StatefulWidget {
  @override
  _Profile2State createState() => _Profile2State();
}

ProfileModel2 profile2 = ProfileProvider2.getProfile();

class _Profile2State extends State<Profile2> {
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
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          ),
          body: Stack(
            children: [
              _profileTitle(context),
              _bodyContent(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget _profileTitle(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.02,
      left: 0,
      right: 0,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.7),
                  shape: BoxShape.circle,
                ),
              ),
              CircleAvatar(
                backgroundImage: ExactAssetImage("assets/images/profile2.jpg"),
                radius: 50,
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            profile2.user2.name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            profile2.user2.adress,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }

  Widget _bodyContent(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.34,
      right: 0,
      left: 0,
      bottom: 0,
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _profileData(context),
            Divider(
              height: 0,
              thickness: 0.8,
            ),
            _aboutList(context),
            ..._frinds(context)
          ],
        ),
      ),
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
                profile2.followers.toString(),
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
                profile2.following.toString(),
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
                profile2.frinds.toString(),
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

  Widget _aboutList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ABOUT ME",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            profile2.user2.about,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              height: 1.4,
              letterSpacing: 0.4,
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _frinds(BuildContext context) {
    return [
      Padding(
        padding: const EdgeInsets.only(left: 16, top: 8),
        child: Text(
          "FRINDS",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Expanded(
        child: Container(
          height: 70,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (context, position) {
              return Padding(
                padding: const EdgeInsets.only(top: 8, left: 10, bottom: 6),
                child: CircleAvatar(
                  backgroundImage:
                      ExactAssetImage("assets/images/profile2.jpg"),
                  radius: 35,
                ),
              );
            },
          ),
        ),
      )
    ];
  }
}
