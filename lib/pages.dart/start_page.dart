import 'package:alen_web/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: GradientColors.aquaSplash),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        //boxShadow: [
        // (BoxShadow(
        // color: Colors.grey,
        // blurRadius: 7,
        // offset: Offset(0, 5),
        //))
        //]
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: const [
                Placeholder(),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                nameTitle,
                style: GoogleFonts.acme(
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                detailsText,
                style: GoogleFonts.abel(
                  fontStyle: FontStyle.italic,
                  fontSize: 14,
                  letterSpacing: 0.5,
                  color: Colors.grey[200],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
