import 'package:flutter/material.dart';
import 'package:profile_me/components.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  Widget build(BuildContext context) {
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
            TabsWeb(
              title: 'Home',
              route: "/",
            ),
            Spacer(),
            TabsWeb(
              title: 'Works',
              route: "/works",
            ),
            Spacer(),
            TabsWeb(
              title: 'Blog',
              route: "/blog",
            ),
            Spacer(),
            TabsWeb(
              title: 'About',
              route: "/about",
            ),
            Spacer(),
            TabsWeb(
              title: 'Contact',
              route: "/contact",
            ),
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
          //First section
          SizedBox(
            height: 500.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold(
                      text: "About me",
                      size: 40.0,
                    ),
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
                        tealContainer("Flutter"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer("Firebase"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer("Android"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer("Windows"),
                        SizedBox(
                          width: 7.0,
                        ),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 147.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 143.0,
                    child: CircleAvatar(
                      radius: 140,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        "assets/profile2-circle.png",
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Second section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCard(
                imagePath: "assets/webL.png",
                height: 250.0,
                width: 250.0,
                text: "Web Development",
              ),
              SizedBox(
                width: deviceWidth / 3,
                child: Column(
                  children: [
                    SansBold(
                      text: "Web development",
                      size: 30.0,
                    ),
                    Sans(
                      text:
                          "I'm here to build your presence online with sate of art web apps",
                      size: 15.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: deviceWidth / 3,
                child: Column(
                  children: [
                    SansBold(
                      text: "App Development",
                      size: 30.0,
                    ),
                    Sans(
                      text:
                          "Do you need a high performance,responsive and beautiful app? Don't worry, I've got you covered.",
                      size: 15.0,
                    ),
                  ],
                ),
              ),
              AnimatedCard(
                imagePath: "assets/app.png",
                height: 250.0,
                width: 250.0,
                text: "Web Development",
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCard(
                imagePath: "assets/firebase.png",
                height: 250.0,
                width: 250.0,
                text: "Back-end Development",
              ),
              SizedBox(
                width: deviceWidth / 3,
                child: Column(
                  children: [
                    SansBold(
                      text: "Web development",
                      size: 30.0,
                    ),
                    Sans(
                      text:
                          "Do you want your back-end to be highly scalable and sercure? Let's have a conversation on how I can help you with that.",
                      size: 15.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 60.0),
        ],
      ),
    );
  }
}
