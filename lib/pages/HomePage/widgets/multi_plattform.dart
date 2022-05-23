import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MultiPlattform extends StatelessWidget {
  const MultiPlattform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsiveValue = ResponsiveWrapper.of(context);
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white),
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
                    "Multi-Plattform",
                    style: GoogleFonts.acme(
                        fontSize:
                            responsiveValue.isLargerThan(TABLET) ? 20 : 18,
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Reach users on every screen",
                    style: GoogleFonts.acme(
                        height: 0.9,
                        fontSize:
                            responsiveValue.isLargerThan(TABLET) ? 50 : 30,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Deploy to multiple devices from single codebase",
                    style: GoogleFonts.acme(
                      height: 0.9,
                      fontSize: responsiveValue.isLargerThan(TABLET) ? 20 : 18,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Image.asset(
                "images/homelogo.jpg",
              ),
            ),
          )
        ],
      ),
    );
  }
}
