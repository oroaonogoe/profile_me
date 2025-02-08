import 'package:flutter/material.dart';
import 'package:profile_me/mobile/landing_page_mobile.dart';
import 'package:profile_me/web/landing_page_web.dart';

class Routes {
  static Route<dynamic> generalRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => LayoutBuilder(builder: (context, constraints) {
            if(constraints.maxWidth > 800)
              return LandingPageWeb();
            else
              return LandingPageMobile();
          },),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("Url Not Found!"),
            ),
          ),
        );
    }
  }
}
