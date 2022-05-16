import 'package:flutter/material.dart';

import 'appbar_widget.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Alen-Page",
      home: Scaffold(
        appBar: MyAppBar(),
      ),
    );
  }
}
