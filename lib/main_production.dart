import 'package:flutter/material.dart';
import 'app_config.dart';
import 'main.dart' show MainApp;

void main() {
  AppConfig.instance = const AppConfig(
    flavor: AppFlavor.production,
    appName: 'ShorebirdTest',
    apiBaseUrl: 'https://api.example.com',
  );
  runApp(const MainApp());
}
