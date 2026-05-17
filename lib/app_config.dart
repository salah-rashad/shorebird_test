import 'package:flutter/material.dart';

enum AppFlavor {
  development("DEV", Colors.deepOrange, Colors.black),
  staging("STG", Colors.orange, Colors.black),
  production("PRD", Colors.green, Colors.black);

  final String bannerText;
  final Color bannerColor;
  final Color bannerTextColor;

  const AppFlavor(this.bannerText, this.bannerColor, this.bannerTextColor);
}

class AppConfig {
  const AppConfig({
    required this.flavor,
    required this.appName,
    required this.apiBaseUrl,
  });

  final AppFlavor flavor;
  final String appName;
  final String apiBaseUrl;

  static late AppConfig instance;

  bool get isDevelopment => flavor == AppFlavor.development;

  bool get isStaging => flavor == AppFlavor.staging;

  bool get isProduction => flavor == AppFlavor.production;
}
