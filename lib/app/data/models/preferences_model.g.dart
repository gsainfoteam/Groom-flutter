// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreferencesModelImpl _$$PreferencesModelImplFromJson(
  Map<String, dynamic> json,
) => _$PreferencesModelImpl(
  isSnoring: json['isSnoring'] as bool,
  isSmoking: json['isSmoking'] as bool,
  sleepTime: json['sleepTime'] as String,
  wakeUpTime: json['wakeUpTime'] as String,
  hasRefrigerator: json['hasRefrigerator'] as bool,
  isColdSensitive: json['isColdSensitive'] as bool,
  isHotSensitive: json['isHotSensitive'] as bool,
  cleanupFrequency: (json['cleanupFrequency'] as num).toInt(),
);

Map<String, dynamic> _$$PreferencesModelImplToJson(
  _$PreferencesModelImpl instance,
) => <String, dynamic>{
  'isSnoring': instance.isSnoring,
  'isSmoking': instance.isSmoking,
  'sleepTime': instance.sleepTime,
  'wakeUpTime': instance.wakeUpTime,
  'hasRefrigerator': instance.hasRefrigerator,
  'isColdSensitive': instance.isColdSensitive,
  'isHotSensitive': instance.isHotSensitive,
  'cleanupFrequency': instance.cleanupFrequency,
};
