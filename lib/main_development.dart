import 'package:flutter/material.dart';
import 'package:shorebird_test/widgets/flavor_banner.dart';

import 'app_config.dart';
import 'main.dart' show MainApp;

void main() {
  AppConfig.instance = const AppConfig(
    flavor: AppFlavor.development,
    appName: 'ShorebirdTest Dev',
    apiBaseUrl: 'https://dev-api.example.com',
  );
  runApp(const MainApp());
}
