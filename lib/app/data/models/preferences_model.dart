import 'package:freezed_annotation/freezed_annotation.dart';

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
