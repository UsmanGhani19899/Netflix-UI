class ProfileList {
  String ProfileImg;
  String userName;

  ProfileList({
    required this.ProfileImg,
    required this.userName,
  });
}

List<ProfileList> profileList = [
  ProfileList(ProfileImg: "asset/image/screen_one.jpg", userName: "Usman"),
  ProfileList(ProfileImg: "asset/image/screen_two.png", userName: "Anas"),
  ProfileList(ProfileImg: "asset/image/screen_three.png", userName: "Owais"),
  ProfileList(ProfileImg: "asset/image/screen_four.jpg", userName: "Faraz"),
  ProfileList(ProfileImg: "asset/image/screen_five.png", userName: "AbdulHadi"),
];
