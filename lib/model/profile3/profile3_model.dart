class User{
  String name , address, about;
  int followers , following , frends;
  User({this.name , this.address , this.about , this.followers, this.following, this.frends});
}

class ProfileModel3{
  User user;
  List <String> photos;
    List <String> profileImages;
  ProfileModel3({this.user , this.photos , this.profileImages});
}