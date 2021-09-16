import 'dart:convert';

import 'package:project/model/user_type.dart';

class UserModel {
  String? id;
  String? name;
  String? avatar;
  List<UserType>? typePokemons;

  UserModel({
    required this.id,
    required this.name,
    required this.avatar,
    required this.typePokemons,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'avatar': avatar,
      'typePokemons': typePokemons!.map((x) => x.toMap()).toList(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      avatar: map['avatar'] ?? '',
      typePokemons: List<UserType>.from(
          map['typePokemons']?.map((x) => UserType.fromMap(x)) ?? const []),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
