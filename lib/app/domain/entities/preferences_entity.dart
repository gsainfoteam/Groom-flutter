class PreferencesEntity {
  final bool isSnoring;
  final bool isSmoking;
  final int sleepTime;
  final int wakeUpTime;
  final bool hasRefrigerator;
  final bool isColdSensitive;
  final bool isHotSensitive;
  final int cleanupFrequency;

  const PreferencesEntity({
    required this.isSnoring,
    required this.isSmoking,
    required this.sleepTime,
    required this.wakeUpTime,
    required this.hasRefrigerator,
    required this.isColdSensitive,
    required this.isHotSensitive,
    required this.cleanupFrequency,
  });

  static PreferencesEntity mock() {
    return PreferencesEntity(
      isSnoring: false,
      isSmoking: false,
      sleepTime: 1,
      wakeUpTime: 3,
      hasRefrigerator: true,
      isColdSensitive: false,
      isHotSensitive: false,
      cleanupFrequency: 7,
    );
  }
}
