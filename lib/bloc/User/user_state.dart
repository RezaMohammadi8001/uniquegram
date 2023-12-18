import 'package:uniquegram/data/model/user.dart';

abstract class UserState {}

class UserLoadingState extends UserState {}

class UserResponseState extends UserState {
  List<User> userList;
  UserResponseState(this.userList);
}
