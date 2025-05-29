import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groom_flutter/app/domain/entities/preferences_entity.dart';

part 'preferences_model.freezed.dart';
part 'preferences_model.g.dart';

@freezed
class PreferencesModel with _$PreferencesModel {
  const factory PreferencesModel({
    required bool isSnoring,
    required bool isSmoking,
    required String sleepTime,
    required String wakeUpTime,
    required bool hasRefrigerator,
    required bool isColdSensitive,
    required bool isHotSensitive,
    required int cleanupFrequency,
  }) = _PreferencesModel;

  factory PreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$PreferencesModelFromJson(json);
}

extension PrefernecesMapper on PreferencesModel {
  PreferencesEntity toEntity() {
    return PreferencesEntity(
      isSnoring: isSnoring,
      isSmoking: isSmoking,
      sleepTime: sleepTime,
      wakeUpTime: wakeUpTime,
      hasRefrigerator: hasRefrigerator,
      isColdSensitive: isColdSensitive,
      isHotSensitive: isHotSensitive,
      cleanupFrequency: cleanupFrequency,
    );
  }
}
