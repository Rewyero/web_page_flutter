import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menuitem extends StatelessWidget {
  final String text;
  const Menuitem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          // ignore: avoid_print
          print("On Click!");
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            text,
            style: GoogleFonts.acme(fontSize: 17),
          ),
        ),
      ),
    );
  }
}
