import 'package:flutter/material.dart';
import 'package:profile_me/mobile/landing_page_mobile.dart';
import 'package:profile_me/routes.dart';
import 'package:profile_me/web/landing_page_web.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Me',
      onGenerateRoute: (settings) => Routes.generalRoute(settings),
      // home: LayoutBuilder(
      //   builder: (context, constraints) {
      //     if (constraints.maxWidth > 800) {
      //       return LandingPageWeb();
      //     } else {
      //       return LandingPageMobile();
      //     }
      //   },
      // ),
    );
  }
}
