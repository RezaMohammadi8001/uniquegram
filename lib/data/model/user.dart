// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  String name;
  String picture;
  User(
    this.name,
    this.picture,
  );
  factory User.userfromJson(Map<String, dynamic> map) {
    return User(
      map['name']['first'],
      map['picture']['large'],
    );
  }
}
