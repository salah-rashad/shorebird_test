import 'package:flutter/material.dart';
import 'package:shorebird_test/widgets/flavor_banner.dart';

import 'app_config.dart';
import 'main.dart' show MainApp;

void main() {
  AppConfig.instance = const AppConfig(
    flavor: AppFlavor.staging,
    appName: 'ShorebirdTest Stg',
    apiBaseUrl: 'https://stg-api.example.com',
  );
  runApp(
    const MainApp(),
  );
}
