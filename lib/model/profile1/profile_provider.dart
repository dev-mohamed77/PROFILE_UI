import 'package:Flutter_UI/model/profile1/profile_model.dart';

class ProfileProvider {
  
  static Profile getProfile(){
    return Profile(
      user: User(
        name: "Mohamed Abdel Nasser",
        adress: "Elmenofeya-Sadat City",
        about: "Whether online or in person, connections are the foundation of the professional world. In many cases, making a great first impression is crucial to solidifying a professional relationship. As a result, it is important to have a quick and effective pitch about your experience, aims and relevant personal details. ",
      ),
      followers: 2318,
      following: 364,
      frinds: 175,
    );
  }

}