import 'package:alen_web/constans.dart';
import 'package:alen_web/presentation/menu/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Row(
          children: [
            Text(
              apptitle,
              style:
                  GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const Menuitem(text: "Test"),
            const Menuitem(text: "Test"),
            const Menuitem(text: "Test"),
            const Menuitem(text: "Test"),
          ],
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: GradientColors.nightParty),
          ),
        ));
  }
}
