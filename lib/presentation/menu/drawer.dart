import 'package:alen_web/constans.dart';
import 'package:alen_web/presentation/buttons/kontakt.dart';
import 'package:alen_web/presentation/menu/home_logo.dart';
//import 'package:alen_web/presentation/menu/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const HomeLogo(),
                    const Spacer(),
                    Text(
                      apptitle,
                      style: GoogleFonts.roboto(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                // [MOBILE VIEW] Add Menu Items Here! Like: const Menuitem(text: "Test"),
              ],
            ),
            Column(
              children: const [
                Spacer(),
                KontaktButton(),
                SizedBox(
                  height: 20,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
