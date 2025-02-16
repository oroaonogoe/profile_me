import 'package:flutter/material.dart';
import 'package:profile_me/components.dart';

class WorkWeb extends StatefulWidget {
  const WorkWeb({super.key});

  @override
  State<WorkWeb> createState() => _WorkWebState();
}

class _WorkWebState extends State<WorkWeb> {
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
              radius: 72.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/works.jpg"),
              ),
            ),
            SizedBox(height: 15.0),
            SansBold(
              text: "Works",
              size: 30.0,
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlLauncher("assets/instagram.svg",
                    "https://www.instagram.com/tomcruise/"),
                urlLauncher(
                    "assets/twitter.svg", "https://www.twitter.com/tomcruise"),
                urlLauncher("assets/github.svg", "https://www.github.com/"),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 500.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                size: 25.0,
                color: Colors.black,
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/works.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: Row(
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  TabsWeb(
                    title: "Home",
                    route: "/",
                  ),
                  Spacer(),
                  TabsWeb(
                    title: "Works",
                    route: "/works",
                  ),
                  Spacer(),
                  TabsWeb(
                    title: "Blog",
                    route: "/blog",
                  ),
                  Spacer(),
                  TabsWeb(
                    title: "About",
                    route: "/about",
                  ),
                  Spacer(),
                  TabsWeb(
                    title: "Contact",
                    route: "/contact",
                  ),
                  Spacer(),
                ],
              ),
            ),
          ];
        },
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 30.0),
                SansBold(
                  text: "Works",
                  size: 40.0,
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const AnimatedCard(
                      imagePath: "assets/portfolio_screenshot.PNG",
                      height: 200.0,
                      width: 300.0,
                      text: '',
                    ),
                    SizedBox(
                      width: deviceWidth / 3,
                      child: Column(
                        children: [
                          SansBold(
                            text: "Portfolio",
                            size: 30.0,
                          ),
                          SizedBox(
                            height: 15.0,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
