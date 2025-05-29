import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groom_flutter/app/domain/entities/preferences_entity.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String profileImage,
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
}

extension UserMbtiMapper on UserEntity {
  String mbtiString() {
    String result = '';
    result += isE ? 'E' : 'I';
    result += isS ? 'S' : 'N';
    result += isT ? 'T' : 'F';
    result += isJ ? 'J' : 'P';
    return result;
  }
}
