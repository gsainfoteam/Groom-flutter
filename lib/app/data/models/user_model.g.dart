// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      profileImage: json['profileImage'] as String,
      nickname: json['nickname'] as String,
      studentNumber: (json['studentNumber'] as num).toInt(),
      major: json['major'] as String,
      age: (json['age'] as num).toInt(),
      gender: json['gender'] as String,
      nationality: json['nationality'] as String,
      mbti: (json['mbti'] as num).toInt(),
      preferences: PreferencesModel.fromJson(
        json['preferences'] as Map<String, dynamic>,
      ),
      introduction: json['introduction'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'profileImage': instance.profileImage,
      'nickname': instance.nickname,
      'studentNumber': instance.studentNumber,
      'major': instance.major,
      'age': instance.age,
      'gender': instance.gender,
      'nationality': instance.nationality,
      'mbti': instance.mbti,
      'preferences': instance.preferences,
      'introduction': instance.introduction,
    };
