import 'package:Flutter_UI/model/profile2/profile2_model.dart';

class ProfileProvider2 {
  
  static ProfileModel2 getProfile(){
    return ProfileModel2(
      user2: User2(
        name: "Mohamed Abdel Nasser",
        adress: "Elmenofeya-Sadat City",
        about: "Whether online or in person, connections are the foundation of the professional world. In many cases, making a great first impression is crucial to solidifying a professional relationship. As a result, it is important to have a quick and effective pitch about your experience, aims and relevant personal details. ",
      ),
      followers: 2318,
      following: 364,
      frinds: 175,
      frind:25,
    );
  }

}