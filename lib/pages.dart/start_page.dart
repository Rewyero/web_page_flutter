import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      child: Row(children: const [
        Placeholder(),
        Text("Überschrift"),
        Text("Beschreibung"),
      ]),
    );
  }
}
