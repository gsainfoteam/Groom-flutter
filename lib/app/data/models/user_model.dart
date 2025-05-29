import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groom_flutter/app/data/models/preferences_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String profileImage,
    required String nickname,
    required int studentNumber,
    required String major,
    required int age,
    required String gender,
    required String nationality,
    required int mbti,
    required PreferencesModel preferences,
    required String introduction,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
