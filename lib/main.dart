import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:profile_me/firebase_options.dart';
import 'package:profile_me/routes.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
