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
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/image.png"),
              ),
            ),
            SizedBox(height: 15),
            SansBold(text: "Your Name", size: 30),
            SizedBox(height: 15),
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(
              flex: 3,
            ),
            TabsWeb(title: 'Home', route: "/",),
            Spacer(),
            TabsWeb(title: 'Works', route: "/works",),
            Spacer(),
            TabsWeb(title: 'Blog', route: "/blog",),
            Spacer(),
            TabsWeb(title: 'About', route: "/about",),
            Spacer(),
            TabsWeb(title: 'Contact',route: "/contact",),
            Spacer(),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          // First section
          SizedBox(
            height: deviceHeight - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                      child: SansBold(
                        text: "Hello I'm",
                        size: 15,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Sans(text: "Profile name", size: 55),
                    Sans(text: "Flutter Developer", size: 30.0),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 20),
                        Sans(text: "profilemail@some.com", size: 15),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(width: 20),
                        Sans(text: "+95 9xx xxx xxx x", size: 15),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(width: 20),
                        Sans(text: "No(10) some place, somewhere", size: 15),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 147.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143.0,
                    child: CircleAvatar(
                      radius: 140,
                      backgroundImage: AssetImage("assets/image-circle.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Second section
          SizedBox(
            height: deviceHeight / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/web.jpg",
                  height: deviceHeight / 1.7,
                ),
                SizedBox(
                  width: deviceWidth / 1.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SansBold(text: "About me", size: 40.0),
                      SizedBox(
                        height: 15.0,
                      ),
                      Sans(
                          text:
                              "Hello! I am Paulina Knop I specialize in flutter development",
                          size: 15.0),
                      Sans(
                          text:
                              "I strive to ensure astounding performance with state of ",
                          size: 15),
                      Sans(
                          text:
                              "the art security for Android, iOS, Web, MacOS, Linux and Windows",
                          size: 15),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.all(7.0),
                            child: Sans(text: "Flutter", size: 15),
                          ),
                          SizedBox(width: 7),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.all(7.0),
                            child: Sans(text: "Firebase", size: 15),
                          ),
                          SizedBox(width: 7),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.all(7.0),
                            child: Sans(text: "Android", size: 15),
                          ),
                          SizedBox(width: 7),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.all(7.0),
                            child: Sans(text: "iOS", size: 15),
                          ),
                          SizedBox(width: 7),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.all(7.0),
                            child: Sans(text: "Windows", size: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Third section
          SizedBox(
            height: deviceHeight / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold(text: "What I Do?", size: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCard(
                        imagePath: "assets/webL.png", text: "Web Development"),
                    AnimatedCard(
                      imagePath: "assets/app.png",
                      text: "App Development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCard(
                        imagePath: "assets/firebase.png",
                        text: "Back-end Development"),
                  ],
                ),
              ],
            ),
          ),
          // Fourth
          SizedBox(
            height: deviceHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold(text: "Contact me", size: 40),
                ContactMe(deviceWidth: deviceWidth),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
