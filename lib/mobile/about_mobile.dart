import 'package:flutter/material.dart';
import 'package:profile_me/components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(
            size: 35.0,
            color: Colors.black,
          ),
        ),
        endDrawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DrawerHeader(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2.0, color: Colors.black),
                  ),
                  child: Image.asset(
                    "assets/profile2-circle.png",
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
              TabsMobile(text: "Home", route: '/'),
              SizedBox(height: 20.0),
              TabsMobile(text: "Works", route: "/works"),
              SizedBox(height: 20.0),
              TabsMobile(text: "Blog", route: '/blog'),
              SizedBox(height: 20.0),
              TabsMobile(text: "About", route: '/about'),
              SizedBox(height: 20.0),
              TabsMobile(text: "Contact", route: '/contact'),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  urlLauncher("assets/instagram.svg",
                      "https://www.instagram.com/tomcruise/"),
                  urlLauncher("assets/twitter.svg",
                      "https://www.twitter.com/tomcruise"),
                  urlLauncher("assets/github.svg", "https://www.github.com/"),
                ],
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              CircleAvatar(
                radius: 117.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 113.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 110.0,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      "assets/profile2-circle.png",
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold(text: "About me", size: 35.0),
                    SizedBox(height: 10.0),
                    Sans(
                        text:
                            "Hello! I'm Name I specialize in Flutter Development",
                        size: 15.0),
                    Sans(
                        text:
                            "I strive to ensure astounding performance with state of ",
                        size: 15.0),
                    Sans(
                        text:
                            "the art security for Android, iOS, Web, macOS, Linux, Windows",
                        size: 15.0),
                    SizedBox(height: 15.0),
                    Wrap(
                      spacing: 7.0,
                      runSpacing: 7.0,
                      children: [
                        tealContainer("Flutter"),
                        tealContainer("Firebase"),
                        tealContainer("Android"),
                        tealContainer("Windows"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SansBold(text: "What I Do?", size: 35.0),
                  AnimatedCard(
                    imagePath: "assets/webL.png",
                    text: "Web Development",
                    width: 300.0,
                  ),
                  SizedBox(height: 35.0),
                  Sans(
                    text:
                        "I'm here to build your presence online with sate of art web apps",
                    size: 15.0,
                  ),
                  SizedBox(height: 10.0),
                  AnimatedCard(
                    imagePath: "assets/app.png",
                    text: "App Development",
                    fit: BoxFit.contain,
                    width: 300.0,
                    reverse: true,
                  ),
                  SizedBox(height: 35.0),
                  Sans(text: "Do you need a high performance,responsive and beautiful app? Don't worry, I've got you covered.",size: 15.0,),
                  SizedBox(height: 10.0,),
                  AnimatedCard(
                    imagePath: "assets/firebase.png",
                    text: "Back-end Development",
                    width: 300.0,
                  ),
                  SizedBox(height: 35.0),
                  Sans(text: "Do you want your back-end to be highly scalable and sercure? Let's have a conversation on how I can help you with that.",size: 15.0,),
                  SizedBox(height: 60.0),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
