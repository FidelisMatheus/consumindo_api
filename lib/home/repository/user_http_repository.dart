import 'dart:convert';

import 'package:consumindo_api/model/user_model.dart';
import 'package:consumindo_api/repository/i_user_repository.dart';
import 'package:http/http.dart' as http; //as [é um alias no caso um apelido]

class UserHttpRepository implements IUserRepository {
  @override
  Future<List<UserModel>> findAllUsers() async {
    final response =
        await http.get('https://5f7cba02834b5c0016b058aa.mockapi.io/api/users');

    //List<Map<String, dynamic>>
    final responseMap = jsonDecode(response.body);

    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .toList();
  }
}
