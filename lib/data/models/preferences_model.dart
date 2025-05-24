class PreferencesModel {
  final bool isSnoring;
  final bool isSmoking;
  final String sleepTime;
  final String wakeUpTime;
  final bool hasRefrigerator;
  final bool isColdSensitive;
  final bool isHotSensitive;
  final int cleanupFrequency;

  const PreferencesModel({
    required this.isSnoring,
    required this.isSmoking,
    required this.sleepTime,
    required this.wakeUpTime,
    required this.hasRefrigerator,
    required this.isColdSensitive,
    required this.isHotSensitive,
    required this.cleanupFrequency,
  });
}
