import 'package:alen_web/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MultiPlattform extends StatelessWidget {
  const MultiPlattform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsiveValue = ResponsiveWrapper.of(context);
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: GradientColors.gradeGrey)),
      child: ResponsiveRowColumn(
        columnVerticalDirection: VerticalDirection.up,
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        layout: responsiveValue.isSmallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    nameTitle,
                    style: GoogleFonts.acme(
                        height: 0.9,
                        fontSize:
                            responsiveValue.isLargerThan(TABLET) ? 40 : 30,
                        color: const Color.fromARGB(255, 73, 72, 72),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    detailsText,
                    style: GoogleFonts.acme(
                      height: 0.9,
                      fontSize: responsiveValue.isLargerThan(TABLET) ? 20 : 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  imgPath,
                  height: 300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
