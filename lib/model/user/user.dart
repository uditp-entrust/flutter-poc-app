import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: '_id')
  String id;

  String email;
  String password;
  String firstName;
  String lastName;
  String phoneNumber;

  @JsonKey(name: 'token')
  String authToken;

  User(
      {required this.email,
      this.password = '',
      this.id = '',
      this.firstName = '',
      this.lastName = '',
      this.phoneNumber = '',
      this.authToken = ''});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
