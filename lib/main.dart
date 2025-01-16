import 'package:flutter/material.dart';
import 'package:profile_me/mobile/landing_page_mobile.dart';
import 'package:profile_me/web/landing_page_web.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Me',
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return LandingPageWeb();
          } else {
            return LandingPageMobile();
          }
        },
      ),
    );
  }
}
