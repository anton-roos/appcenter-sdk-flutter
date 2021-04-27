class AnalyticsService {
  static Future<bool> track(Map<String, dynamic> properties) async {
    await Future.delayed(const Duration(seconds: 2), () {});
    return true;
  }
}
