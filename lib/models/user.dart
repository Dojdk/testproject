class User {
  final int id;
  final String name;
  final String followers;
  final String posts;
  final String following;
  final String image;
  final String country;
  final String bio;
  final List<String> images;
  bool isFollowed;

  User(
      {required this.id,
      required this.bio,
      required this.images,
      required this.name,
      required this.followers,
      required this.posts,
      required this.following,
      required this.image,
      required this.country,
      required this.isFollowed});
}
