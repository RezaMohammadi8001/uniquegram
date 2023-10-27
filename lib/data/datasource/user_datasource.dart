import 'package:dio/dio.dart';
import 'package:uniquegram/data/model/user.dart';

class UserDatasource {
  Future<List<User>> getUserList() async {
    try {
      var respones = await Dio()
          .get('https://randomuser.me/api/?page=1&results=30&seed=abc');
      return respones.data['items']
          .map<User>((jsonObject) => User.fromJson(jsonObject))
          .toList();
    } on DioException {
      throw UnimplementedError();
    } catch (ex) {
      throw UnimplementedError();
    }
  }
}
