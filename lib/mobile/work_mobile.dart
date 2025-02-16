import 'package:flutter/material.dart';
import 'package:profile_me/components.dart';

class WorkMobile extends StatefulWidget {
  const WorkMobile({super.key});

  @override
  State<WorkMobile> createState() => _WorkMobileState();
}

class _WorkMobileState extends State<WorkMobile> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
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
                  child: Image.asset("assets/profile2-circle.png"),
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
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(
                  size: 35.0,
                  color: Colors.black,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/works.jpg",
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ];
          },
          body: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30.0),
                  SansBold(
                    text: "Works",
                    size: 35.0,
                  ),
                  SizedBox(height: 20.0),
                  AnimatedCard(
                    imagePath: "assets/portfolio_screenshot.PNG",
                    height: 150.0,
                    width: 300.0,
                    text: '',
                  ),
                  SizedBox(height: 30.0),
                  SansBold(
                    text: "Portfolio",
                    size: 20.0,
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Sans(
                      text:
                          "I'm here to build your presence online with sate of art web apps",
                      size: 15.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
