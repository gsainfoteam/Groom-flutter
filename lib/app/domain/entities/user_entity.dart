import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groom_flutter/app/domain/entities/preferences_entity.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String profileImage,
    required int uuid,
    required bool isMale,
    required String nickname,
    required int studentNumber,
    required String major,
    required int age,
    required String gender,
    required String nationality,
    required bool isE,
    required bool isS,
    required bool isT,
    required bool isJ,
    required PreferencesEntity preferences,
    required String introduction,
  }) = _UserEntity;

  static UserEntity mock() {
    return UserEntity(
      profileImage: 'encoded data',
      uuid: 123,
      isMale: true,
      nickname: 'Mock User',
      studentNumber: 19,
      major: 'Computer Science',
      age: 25,
      gender: 'Non-binary',
      nationality: 'Global',
      isE: true,
      isS: true,
      isT: false,
      isJ: true, // ESTJ
      preferences: PreferencesEntity.mock(), // Use mock PreferencesEntity
      introduction: 'This is a mock user entity for testing.',
    );
  }
}

extension UserMbtiMapper on UserEntity {
  String stringMbti() {
    String result = '';
    result += isE ? 'E' : 'I';
    result += isS ? 'S' : 'N';
    result += isT ? 'T' : 'F';
    result += isJ ? 'J' : 'P';
    return result;
  }
}
