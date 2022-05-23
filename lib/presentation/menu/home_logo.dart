import 'package:flutter/material.dart';

class HomeLogo extends StatelessWidget {
  const HomeLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/homelogo.png",
      height: 37,
      fit: BoxFit.cover,
    );
  }
}
