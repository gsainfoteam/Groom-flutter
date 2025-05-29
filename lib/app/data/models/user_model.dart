import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groom_flutter/app/data/models/preferences_model.dart';
import 'package:groom_flutter/app/domain/entities/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
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

extension UserMapper on UserModel {
  UserEntity toEntity() {
    // Convert decimal integer mbti to boolean flags (ESTJ order)
    bool isE = (mbti ~/ 1000) == 1;
    bool isS = ((mbti % 1000) ~/ 100) == 1;
    bool isT = ((mbti % 100) ~/ 10) == 1;
    bool isJ = (mbti % 10) == 1;

    return UserEntity(
      profileImage: profileImage,
      nickname: nickname,
      studentNumber: studentNumber,
      major: major,
      age: age,
      gender: gender,
      nationality: nationality,
      isE: isE,
      isS: isS,
      isT: isT,
      isJ: isJ,
      preferences: preferences.toEntity(),
      introduction: introduction,
    );
  }
}
