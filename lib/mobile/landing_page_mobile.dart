import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_me/components.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  @override
  Widget build(BuildContext context) {
    var widthdevice = MediaQuery.of(context).size.width;
    return Scaffold(
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
                urlLauncher(
                    "assets/twitter.svg", "https://www.twitter.com/tomcruise"),
                urlLauncher("assets/github.svg", "https://www.github.com/"),
              ],
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          //Intro first section
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
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: SansBold(text: "Hello I'm", size: 15.0),
                    ),
                    SansBold(text: "Profile name", size: 40.0),
                    SansBold(text: "Flutter Developer", size: 20.0),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3.0,
                      children: [
                        Icon(Icons.email),
                        Icon(Icons.call),
                        Icon(Icons.location_pin),
                      ],
                    ),
                    SizedBox(width: 40.0),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 9.0,
                      children: [
                        Sans(text: "profilemail@some.com", size: 15),
                        Sans(text: "+95 9xx xxx xxx x", size: 15),
                        Sans(text: "No(10) some place, somewhere", size: 15),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 90.0),
          //About me, second section
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SansBold(text: "About me", size: 35.0),
                Sans(
                    text: "Hello! I'm Name I specialize in Flutter Development",
                    size: 15.0),
                Sans(
                    text:
                        "I strive to ensure astounding performance with state of ",
                    size: 15.0),
                Sans(
                    text:
                        "the art security for Android, iOS, Web, macOS, Linux, Windows",
                    size: 15.0),
                SizedBox(height: 10.0),
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
          SizedBox(height: 60.0),
          //Third section What I do?
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
              AnimatedCard(
                imagePath: "assets/app.png",
                text: "App Development",
                fit: BoxFit.contain,
                width: 300.0,
                reverse: true,
              ),
              SizedBox(height: 35.0),
              AnimatedCard(
                imagePath: "assets/firebase.png",
                text: "Back-end Development",
                width: 300.0,
              ),
              SizedBox(height: 60.0),
            ],
          ),
          //Contact fourth section
          Wrap(
            runSpacing: 20.0,
            spacing: 20.0,
            alignment: WrapAlignment.center,
            children: [
              SansBold(text: "Contact me", size: 35.0),
              TextForm(
                text: "First Name",
                containerWidth: widthdevice / 1.4,
                hintText: "Please type first name",
              ),
              TextForm(
                text: "Last Name",
                containerWidth: widthdevice / 1.4,
                hintText: "Please type last name",
              ),
              TextForm(
                text: "Email Name",
                containerWidth: widthdevice / 1.4,
                hintText: "Please type email name",
              ),
              TextForm(
                text: "Phone number",
                containerWidth: widthdevice / 1.4,
                hintText: "Please type phone number",
              ),
              TextForm(
                text: "Message",
                containerWidth: widthdevice / 1.4,
                hintText: "Please type Message",
                maxLine: 10,
              ),
              MaterialButton(
                onPressed: () {},
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                height: 16.0,
                minWidth: widthdevice / 2.2,
                color: Colors.tealAccent,
                child: SansBold(text: "Submit", size: 20.0),
              ),
            ],
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
