import 'package:flutter/material.dart';
import 'package:profile_me/components.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
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
                backgroundImage: AssetImage("assets/image.png"),
              ),
            ),
            SizedBox(height: 15.0),
            SansBold(
              text: "Profile me",
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
                  "assets/contact_image.jpg",
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.0),
              SansBold(
                text: "Write contact me",
                size: 40.0,
              ),
              SizedBox(height: 20.0),
              ContactMe(deviceWidth: deviceWidth),
            ],
          ),
        ),
      ),
    );
  }
}


