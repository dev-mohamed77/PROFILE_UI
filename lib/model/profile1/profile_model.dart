class User {
  String name , adress , about;
  User({this.name , this.adress, this.about});
}

class Profile{
  User user;
  int followers , following , frinds;
  Profile({this.user , this.followers, this.following , this.frinds});
}