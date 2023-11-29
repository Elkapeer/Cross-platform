const String USER_DEFAULT_PROFILE = "https://i.imgur.com/C1bPcWq.png";

class User {
  String id;
  String name;
  String? auth;
  String email;
  String bio;
  String iconLink;
  String bannerLink;
  String location;
  String website;
  String birthDate;
  String joinedDate;

  int followers;
  int following;
  bool active;

  User({
    this.id = "@Abdo-ww",
    this.name = "Abdo",
    this.auth,
    this.email = "...",
    this.bio = "the coolest man on planet earth :PEPECOOL:",
    this.iconLink = USER_DEFAULT_PROFILE,
    this.bannerLink = "",
    this.location = "hell",
    this.website = "www.Abdo.com",
    this.birthDate = "9-18-2002",
    this.joinedDate = "9-17-2002",
    this.followers = 0,
    this.following = 0,
    this.active = false,
  });

}