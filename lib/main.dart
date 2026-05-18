import 'package:flutter/material.dart';
import 'package:shorebird_test/widgets/flavor_banner.dart';

import 'app_config.dart';

void main() {
  AppConfig.instance = const AppConfig(
    flavor: AppFlavor.production,
    appName: 'ShorebirdTest',
    apiBaseUrl: 'https://api.example.com',
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Shorebird works")),
        body: Center(child: Text('Helloooooooooooooo!')),
      ),
      builder: (context, child) {
        if (child != null && !AppConfig.instance.isProduction) {
          return FlavorBanner(child: child);
        }

        return child ?? const SizedBox();
      },
    );
  }
}

// # Android

// flutter run --flavor development --target lib/main_development.dart
// flutter run --flavor staging    --target lib/main_staging.dart
// flutter run --flavor production --target lib/main_production.dart

// # iOS (select scheme in Xcode, or via CLI)

// flutter run --flavor development --target lib/main_development.dart
// flutter run --flavor staging    --target lib/main_staging.dart
// flutter run --flavor production --target lib/main_production.dart
