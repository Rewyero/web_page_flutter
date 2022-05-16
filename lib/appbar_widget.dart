import 'package:alen_web/constans.dart';
import 'package:alen_web/menu/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        apptitle,
        style: GoogleFonts.roboto(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: GradientColors.nightParty),
          ),
          child: Row(
            children: const [Menuitem(text: "Test")],
          )),
    );
  }
}
