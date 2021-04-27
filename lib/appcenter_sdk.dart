library appcenter_sdk;

import 'dart:async';
import 'dart:io';

import 'package:appcenter_sdk/services/analytics_service.dart';

/// Static class that provides the AppCenter SDK.
class AppCenter {
  /// Returns [value] plus 1.
  init() {
    // Get the operating system as a string.
    String os = Platform.operatingSystem;
    print(os);
  }

  int addOne(int value) => value + 1;

  /// Track events
  static Future trackEventAsync(String name,
      [Map<String, String> properties]) async {
    await AnalyticsService.track({
      'name': name,
      'properties': properties ?? <String, String>{},
    });
  }
}
