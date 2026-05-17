import 'package:flutter/material.dart';
import 'package:shorebird_test/app_config.dart';

const double _kHeight = 12.0; // height of banner
const TextStyle _kTextStyle = TextStyle(
  color: Color(0xFFFFFFFF),
  fontSize: _kHeight * 0.85,
  fontWeight: FontWeight.w900,
  height: 1.0,
);

class FlavorBanner extends StatelessWidget {
  const FlavorBanner({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Banner(
      location: BannerLocation.topStart,
      message: AppConfig.instance.flavor.bannerText,
      color: AppConfig.instance.flavor.bannerColor,
      textStyle: _kTextStyle.copyWith(
        color: AppConfig.instance.flavor.bannerTextColor,
      ),
      child: child,
    );
  }
}
