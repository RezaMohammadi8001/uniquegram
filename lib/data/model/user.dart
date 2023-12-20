// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  String name;
  String picture;
  String userName;
  User(
    this.name,
    this.picture,this.userName,
  );
  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      map['name']['first'],
      map['picture']['large'],
      map['login']['username']
    );
  }
}
