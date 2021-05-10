class UserModel {
  String name;
  String imageUrl;
  UserModel({
    required this.name,
    required this.imageUrl,
  });

  factory UserModel.fake() {
    return UserModel(name: 'VB', imageUrl: 'https://avatars.githubusercontent.com/u/17102578?v=4');
  }
}
