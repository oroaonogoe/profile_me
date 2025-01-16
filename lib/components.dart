import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  const TabsWeb({super.key, required this.title});

  final String title;

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 100),
        curve: Curves.elasticIn,
        style: isSelected
            ? GoogleFonts.oswald(
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(0, -8),
                  ),
                ],
                color: Colors.black,
                fontSize: 25.0,
                decoration: TextDecoration.underline,
                decorationThickness: 1,
              )
            : GoogleFonts.oswald(
                color: Colors.black,
                fontSize: 23.0,
              ),
        child: Text(widget.title),
      ),
    );
  }
}
