import 'package:groom_flutter/data/models/preferences_model.dart';

class UserModel {
  final String profileImage;
  final String nickname;
  final int studentNumber;
  final String major;
  final int age;
  final String gender;
  final String nationality;
  final int mbti;
  final PreferencesModel preferences;
  final String introduction;

  const UserModel({
    required this.profileImage,
    required this.nickname,
    required this.studentNumber,
    required this.major,
    required this.age,
    required this.gender,
    required this.nationality,
    required this.mbti,
    required this.preferences,
    required this.introduction,
  });
}
