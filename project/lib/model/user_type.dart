import 'dart:convert';

class UserType {
  String? id;
  String? type;

  UserType({
    this.id,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
    };
  }

  factory UserType.fromMap(Map<String, dynamic> map) {
    return UserType(
      id: map['id'] ?? '',
      type: map['type'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserType.fromJson(String source) =>
      UserType.fromMap(json.decode(source));
}
