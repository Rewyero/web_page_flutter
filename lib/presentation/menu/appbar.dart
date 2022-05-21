import 'package:alen_web/constans.dart';
import 'package:alen_web/presentation/menu/home_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Row(
          children: [
            const HomeLogo(),
            const SizedBox(width: 10),
            Text(
              apptitle,
              style:
                  GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
          ],
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: GradientColors.nightParty),
          ),
        ));
  }
}
