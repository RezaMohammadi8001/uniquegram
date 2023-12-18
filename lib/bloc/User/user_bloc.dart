import 'package:bloc/bloc.dart';
import 'package:uniquegram/bloc/User/user_event.dart';
import 'package:uniquegram/bloc/User/user_state.dart';
import 'package:uniquegram/data/datasource/user_datasource.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserLoadingState()) {
    on<UserGetEvent>((event, emit) async {
      emit(UserLoadingState());
      UserDatasource userDatasource = UserDatasource();
      var userList = await userDatasource.getUserList();
      emit(UserResponseState(userList));
    });
  }
}
