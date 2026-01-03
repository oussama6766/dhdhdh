import 'package:workmanager/workmanager.dart';

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) {
    print("Native called background task: $task"); 
    // Example: Trigger an alarm update or notification check here
    return Future.value(true);
  });
}

class BackgroundService {
  static final BackgroundService _instance = BackgroundService._internal();
  factory BackgroundService() => _instance;
  BackgroundService._internal();

  Future<void> init() async {
    await Workmanager().initialize(
      callbackDispatcher, 
      isInDebugMode: true 
    );
  }

  Future<void> registerPeriodicTask() async {
    await Workmanager().registerPeriodicTask(
      "1",
      "simplePeriodicTask",
      frequency: const Duration(minutes: 15),
    );
  }
}
