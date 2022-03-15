import 'dart:convert';

import 'user_type.dart';

class UserModel {
  String id;
  String name;
  String username;
  List<UserType> types;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'username': username});
    result.addAll({'types': types.map((x) => x.toMap()).toList()});

    return result;
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      username: map['username'] ?? '',
      types: List<UserType>.from(map['types']?.map((x) => UserType.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap()); //mapa para json

  factory UserModel.fromJson(String source) => UserModel.fromMap(
      json.decode(source)); //aqui pega a string e muda pro json
}
