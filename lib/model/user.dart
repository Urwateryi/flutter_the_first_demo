import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Object with _$UserSerializerMixin{

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'email')
  String email;

  @JsonKey(name: 'pics')
  List<String> pics;

  User(this.name,this.email,this.pics,);

  factory User.fromJson(Map<String, dynamic> srcJson) => _$UserFromJson(srcJson);

}
  