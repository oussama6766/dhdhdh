import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';

class AlarmService {
  static final AlarmService _instance = AlarmService._internal();
  factory AlarmService() => _instance;
  AlarmService._internal();

  Future<void> init() async {
    await AndroidAlarmManager.initialize();
  }

  // Example callback
  @pragma('vm:entry-point')
  static void printHello() {
    print("Alarm fired!");
  }

  Future<void> scheduleOneShot(int id, DateTime time) async {
    await AndroidAlarmManager.oneShotAt(
      time,
      id,
      printHello,
      exact: true,
      wakeup: true,
      alarmClock: true,
      allowWhileIdle: true,
      rescheduleOnReboot: true,
    );
  }
  
  Future<void> cancelAlarm(int id) async {
    await AndroidAlarmManager.cancel(id);
  }
}
