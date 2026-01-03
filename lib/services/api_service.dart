class ApiService {
  static final ApiService _instance = ApiService._internal();
  factory ApiService() => _instance;
  ApiService._internal();

  // Placeholder for fetching content from Backend
  Future<void> fetchAdhkar() async {
    // TODO: Implement fetch logic
    await Future.delayed(const Duration(seconds: 1));
  }

  Future<void> fetchNasheeds() async {
    // TODO: Implement fetch logic
    await Future.delayed(const Duration(seconds: 1));
  }

  Future<void> syncAlarms() async {
    // TODO: Sync local alarms with backend
    await Future.delayed(const Duration(seconds: 1));
  }
}
