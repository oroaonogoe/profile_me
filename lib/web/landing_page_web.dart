import 'package:flutter/material.dart';
import 'package:profile_me/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: TabsWeb(title: 'Home'),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
      ),
      body: CircleAvatar(
        radius: 103.0,
        child: CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage("assets/image-circle.png"),
        ),
      ),
    );
  }
}
